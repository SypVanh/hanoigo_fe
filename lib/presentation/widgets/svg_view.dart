import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgView extends StatelessWidget {
  const SvgView({required this.assetPath, required this.width, required this.height, super.key});

  final String assetPath;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        assetPath,
        width: width,
        height: height,
      ),
    );
  }
}
