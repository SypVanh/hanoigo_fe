import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanoigo/presentation/pages/app/app_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:permission_handler/permission_handler.dart';

class SimpleQRCodeScanner extends StatefulWidget {
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
    _controller = MobileScannerController(formats: [BarcodeFormat.qrCode]);
    // _requestCameraPermission();
  }

  /// Kiểm tra và yêu cầu quyền truy cập camera
  Future<void> _requestCameraPermission() async {
    final status = await Permission.camera.status;
    if (!status.isGranted) {
      final result = await Permission.camera.request();
      if (!result.isGranted) {
        _showPermissionError();
      }
    }
  }

  /// Hiển thị thông báo khi quyền camera bị từ chối
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
                  Navigator.pushNamed(context, Routes.PLACE_DETAIL);
                }
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
