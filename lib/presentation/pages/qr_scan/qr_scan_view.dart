import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/pages/collect_success/collect_success_view.dart';
import 'package:hanoigo/presentation/pages/home/home_viewmodel.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:permission_handler/permission_handler.dart';

class SimpleQRCodeScanner extends StatefulWidget {
  HomeViewModel get viewModel => Get.find<HomeViewModel>();

  static const routeName = "/simple_qr_scanner";

  const SimpleQRCodeScanner({super.key});

  @override
  State<SimpleQRCodeScanner> createState() => _SimpleQRCodeScannerState();
}

class _SimpleQRCodeScannerState extends State<SimpleQRCodeScanner> {
  late final MobileScannerController _controller;
  bool _isScanning = true;

  @override
  void initState() {
    super.initState();
    _isScanning = true;
    _controller = MobileScannerController(formats: [BarcodeFormat.qrCode]);
    // _requestCameraPermission();
  }

  Future<void> _requestCameraPermission() async {
    final status = await Permission.camera.status;
    if (!status.isGranted) {
      final result = await Permission.camera.request();
      if (!result.isGranted) {
        _showPermissionError();
      }
    }
  }

  void _showPermissionError() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Lỗi quyền truy cập'),
          content: const Text('Ứng dụng cần quyền truy cập camera để quét mã QR. Vui lòng cấp quyền trong cài đặt.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Đóng'),
            ),
            TextButton(
              onPressed: () {
                openAppSettings();
              },
              child: const Text('Mở cài đặt'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quét mã QR'),
        titleTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        backgroundColor: ColorName.primaryColor,
        centerTitle: true,
      ),
      body: _isScanning
          ? MobileScanner(
              controller: _controller,
              onDetect: (capture) async {
                final barcodes = capture.barcodes;
                if (barcodes.isNotEmpty) {
                  final String? qrCode = barcodes.first.displayValue;
                  setState(() {
                    _isScanning = false;
                  });
                  if (qrCode != null) {
                    try {
                      final Map<String, dynamic> decoded = jsonDecode(qrCode);
                      final int? placeId = decoded['place_id'];
                      final int? collectibleItemId = decoded['collectible_item_id'];
                      bool flag = true;
                      if (collectibleItemId != null) {
                        final item = getCollectibleItemById(collectibleItemId);
                        final result = await Get.dialog(
                          CollectSuccessScreen(item: item),
                        );

                        if (result == 'reward_collected') {
                          if (placeId != null) {
                            flag = false;
                            widget.viewModel.toPlaceDetail(placeId);
                          }
                        }
                      }
                      if (flag && placeId != null) widget.viewModel.toPlaceDetail(placeId);
                    } catch (e) {
                      print('Error decoding QR Code: $e');
                    }
                  }
                }
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
