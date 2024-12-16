import 'package:flutter/material.dart';
import 'package:hanoigo/foundation/extension/text_ext.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/pages/styles/text_style.dart';

class ListHeader extends StatelessWidget {
  final String? title;
  final String? actionTitle;
  final void Function() onTap;

  const ListHeader({super.key, this.title, this.actionTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title ?? '').workSan_20W800().color(Colors.black),
        GestureDetector(
          onTap: onTap,
          child: Text(actionTitle ?? '').workSan_16W800().color(ColorName.primaryColor),
        )
      ],
    );
  }
}
