import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class MobXView<T extends GetxController> extends StatelessWidget {
  const MobXView({super.key});

  String? get tag => null;

  T get viewModel => GetInstance().find<T>(tag: tag);

  @override
  Widget build(BuildContext context);
}
