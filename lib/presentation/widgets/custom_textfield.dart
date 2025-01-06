import 'package:flutter/material.dart';
import 'package:hanoigo/generated/colors.gen.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.hintText,
    this.icon,
    this.suffixIcon,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.cursorColor = Colors.black,
    this.borderRadius = 24,
    this.isHidden = false,
    super.key,
  });

  final String hintText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final Color cursorColor;
  final double borderRadius;
  final bool isHidden;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      obscureText: isHidden,
      cursorColor: cursorColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: ColorName.textHintColor),
        prefixIcon: icon != null ? Icon(icon, color: ColorName.textHintColor) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon, color: ColorName.textHintColor) : null,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
