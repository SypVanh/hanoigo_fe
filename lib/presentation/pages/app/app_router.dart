// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

abstract class Routes {
  Routes._();

  static const INITIAL = '/';
  static const LOGIN = '/login';
  static const SIGNUP = '/signup';
  static const HOME = '/home';
  static const PLACE_DETAIL = '/place_detail';
  static const COLLECTION = '/collection';
  static const RANKING = '/ranking';
}

abstract class AppRouter {
  void reset();
  void back({int? id});
  void backToRoot({int? id});

  /// Initial Router
  Future? toInitial({int? id});
  Future? offAllInitial({int? id});
  Future? offAndToInitial({int? id});
  Future? offInitial({int? id});
  Future? offUntilInitial({int? id});

  /// Login Router
  Future? toLogin({int? id});
  Future? offAllLogin({int? id});
  Future? offAndToLogin({int? id});
  Future? offLogin({int? id});
  Future? offUntilLogin({int? id});

  /// Signup Router
  Future? toSignup({int? id});
  Future? offAllSignup({int? id});
  Future? offAndToSignup({int? id});
  Future? offSignup({int? id});
  Future? offUntilSignup({int? id});

  /// Home Router
  Future? toHome({int? id});
  Future? offAllHome({int? id});
  Future? offAndToHome({int? id});
  Future? offHome({int? id});
  Future? offUntilHome({int? id});

  /// PlaceDetail Router
  Future? toPlaceDetail({int? id});
  Future? offAllPlaceDetail({int? id});
  Future? offAndToPlaceDetail({int? id});
  Future? offPlaceDetail({int? id});
  Future? offUntilPlaceDetail({int? id});

  /// Collection Router
  Future? toCollection({int? id});
  Future? offAllCollection({int? id});
  Future? offAndToCollection({int? id});
  Future? offCollection({int? id});
  Future? offUntilCollection({int? id});

  /// Ranking Router
  Future? toRanking({int? id});
  Future? offAllRanking({int? id});
  Future? offAndToRanking({int? id});
  Future? offRanking({int? id});
  Future? offUntilRanking({int? id});
}

class AppRouterImpl implements AppRouter {
  @override
  void reset() {
    Get.offAllNamed(Routes.INITIAL);
  }

  @override
  void back({int? id}) {
    Get.back(id: id);
  }

  @override
  void backToRoot({int? id}) {
    Get.until((route) => route.isFirst, id: id);
  }

  /// Initial Router
  @override
  Future? toInitial({int? id}) {
    return Get.toNamed(Routes.INITIAL, id: id);
  }

  @override
  Future? offAllInitial({int? id}) {
    return Get.offAllNamed(Routes.INITIAL, id: id);
  }

  @override
  Future? offAndToInitial({int? id}) {
    return Get.offAndToNamed(Routes.INITIAL, id: id);
  }

  @override
  Future? offInitial({int? id}) {
    return Get.offNamed(Routes.INITIAL, id: id);
  }

  @override
  Future? offUntilInitial({int? id}) {
    return Get.offNamedUntil(Routes.INITIAL, (_) => false, id: id);
  }

  /// Login Router
  @override
  Future? toLogin({int? id}) {
    return Get.toNamed(Routes.LOGIN, id: id);
  }

  @override
  Future? offAllLogin({int? id}) {
    return Get.offAllNamed(Routes.LOGIN, id: id);
  }

  @override
  Future? offAndToLogin({int? id}) {
    return Get.offAndToNamed(Routes.LOGIN, id: id);
  }

  @override
  Future? offLogin({int? id}) {
    return Get.offNamed(Routes.LOGIN, id: id);
  }

  @override
  Future? offUntilLogin({int? id}) {
    return Get.offNamedUntil(Routes.LOGIN, (_) => false, id: id);
  }

  /// Signup Router
  @override
  Future? toSignup({int? id}) {
    return Get.toNamed(Routes.SIGNUP, id: id);
  }

  @override
  Future? offAllSignup({int? id}) {
    return Get.offAllNamed(Routes.SIGNUP, id: id);
  }

  @override
  Future? offAndToSignup({int? id}) {
    return Get.offAndToNamed(Routes.SIGNUP, id: id);
  }

  @override
  Future? offSignup({int? id}) {
    return Get.offNamed(Routes.SIGNUP, id: id);
  }

  @override
  Future? offUntilSignup({int? id}) {
    return Get.offNamedUntil(Routes.SIGNUP, (_) => false, id: id);
  }

  /// Home Router
  @override
  Future? toHome({int? id}) {
    return Get.toNamed(Routes.HOME, id: id);
  }

  @override
  Future? offAllHome({int? id}) {
    return Get.offAllNamed(Routes.HOME, id: id);
  }

  @override
  Future? offAndToHome({int? id}) {
    return Get.offAndToNamed(Routes.HOME, id: id);
  }

  @override
  Future? offHome({int? id}) {
    return Get.offNamed(Routes.HOME, id: id);
  }

  @override
  Future? offUntilHome({int? id}) {
    return Get.offNamedUntil(Routes.HOME, (_) => false, id: id);
  }

  /// PlaceDetail Router
  @override
  Future? toPlaceDetail({int? id}) {
    return Get.toNamed(Routes.PLACE_DETAIL, id: id);
  }

  @override
  Future? offAllPlaceDetail({int? id}) {
    return Get.offAllNamed(Routes.PLACE_DETAIL, id: id);
  }

  @override
  Future? offAndToPlaceDetail({int? id}) {
    return Get.offAndToNamed(Routes.PLACE_DETAIL, id: id);
  }

  @override
  Future? offPlaceDetail({int? id}) {
    return Get.offNamed(Routes.PLACE_DETAIL, id: id);
  }

  @override
  Future? offUntilPlaceDetail({int? id}) {
    return Get.offNamedUntil(Routes.PLACE_DETAIL, (_) => false, id: id);
  }

  /// Collection Router
  @override
  Future? toCollection({int? id}) {
    return Get.toNamed(Routes.COLLECTION, id: id);
  }

  @override
  Future? offAllCollection({int? id}) {
    return Get.offAllNamed(Routes.COLLECTION, id: id);
  }

  @override
  Future? offAndToCollection({int? id}) {
    return Get.offAndToNamed(Routes.COLLECTION, id: id);
  }

  @override
  Future? offCollection({int? id}) {
    return Get.offNamed(Routes.COLLECTION, id: id);
  }

  @override
  Future? offUntilCollection({int? id}) {
    return Get.offNamedUntil(Routes.COLLECTION, (_) => false, id: id);
  }

  /// Ranking Router
  @override
  Future? toRanking({int? id}) {
    return Get.toNamed(Routes.RANKING, id: id);
  }

  @override
  Future? offAllRanking({int? id}) {
    return Get.offAllNamed(Routes.RANKING, id: id);
  }

  @override
  Future? offAndToRanking({int? id}) {
    return Get.offAndToNamed(Routes.RANKING, id: id);
  }

  @override
  Future? offRanking({int? id}) {
    return Get.offNamed(Routes.RANKING, id: id);
  }

  @override
  Future? offUntilRanking({int? id}) {
    return Get.offNamedUntil(Routes.RANKING, (_) => false, id: id);
  }
}
