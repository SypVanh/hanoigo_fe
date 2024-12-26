import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({required this.assetPath, required this.width, required this.height, super.key});

  final String assetPath;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        assetPath,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
