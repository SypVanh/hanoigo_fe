// ignore_for_file: constant_identifier_names
import 'package:get/get.dart';
import 'package:hanoigo/presentation/pages/app/app_router.dart';
import 'package:hanoigo/presentation/pages/collection/collection_view.dart';
import 'package:hanoigo/presentation/pages/explore/explore_view.dart';
import 'package:hanoigo/presentation/pages/home/home_view.dart';
import 'package:hanoigo/presentation/pages/leaderboard/leader_board_view.dart';
import 'package:hanoigo/presentation/pages/login/login_view.dart';
import 'package:hanoigo/presentation/pages/onboarding/onboarding_view.dart';
import 'package:hanoigo/presentation/pages/place_detail/place_detail_view.dart';
import 'package:hanoigo/presentation/pages/signup/signup_view.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: OnboardingView.new,
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: LoginView.new,
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: SignupView.new,
      binding: SignupBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: HomeView.new,
    ),
    GetPage(
      name: Routes.PLACE_DETAIL,
      page: PlaceDetailView.new,
    ),
    GetPage(
      name: Routes.COLLECTION,
      page: CollectionScreen.new,
    ),
    GetPage(
      name: Routes.RANKING,
      page: LeaderboardView.new,
    ),
  ];
}
