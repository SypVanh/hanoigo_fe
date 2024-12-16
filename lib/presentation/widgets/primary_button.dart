import 'package:flutter/material.dart';
import 'package:hanoigo/foundation/extension/text_ext.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/pages/styles/text_style.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({required this.title, this.onPressed, super.key});

  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorName.secondaryColor, // Màu vàng cho nút
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
        child: Text(title).workSan_14W600().color(Colors.black),
      ),
    );
  }
}
