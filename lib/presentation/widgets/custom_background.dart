import 'package:flutter/material.dart';
import 'package:hanoigo/generated/assets.gen.dart';
import 'package:hanoigo/generated/colors.gen.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({required this.child, super.key});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            color: ColorName.primaryColor,
          ),
          Positioned.fill(
            child: Opacity(
              opacity: 0.02,
              child: Image.asset(
                Assets.images.bgCurly.path,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
