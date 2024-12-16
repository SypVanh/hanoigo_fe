import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

abstract class MobXViewModel<A, B> extends GetxController {
  final String? tag = null;

  A get useCase => GetInstance().find<A>(tag: tag)!;

  B get navigator => GetInstance().find<B>(tag: tag)!;

  @override
  void dispose() {
    Get.log('"$runtimeType" disposed');
    super.dispose();
  }
}

abstract class MobXViewModelWithArgs<A, B, C> extends GetxController {
  final String? tag = null;

  late C args;

  A get repository => GetInstance().find<A>(tag: tag)!;

  B get navigator => GetInstance().find<B>(tag: tag)!;
  @override
  void onInit() {
    super.onInit();
    try {
      args = Get.arguments as C;
      Get.log('"$runtimeType" Argument: $args');
    } catch (e) {
      Get.log('"$runtimeType" Missing argument');
      if (kIsWeb) {
        Get.back();
      }
    }
  }

  @override
  void dispose() {
    Get.log('"$runtimeType" disposed');
    super.dispose();
  }
}
