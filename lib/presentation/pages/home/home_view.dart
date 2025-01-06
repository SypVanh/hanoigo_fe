import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:hanoigo/foundation/architecture/mobx_view.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/pages/challenge/challenge_view.dart';
import 'package:hanoigo/presentation/pages/explore/explore_view.dart';
import 'package:hanoigo/presentation/pages/home/home_viewmodel.dart';
import 'package:hanoigo/presentation/pages/onboarding/onboarding_view.dart';
import 'package:hanoigo/presentation/pages/profile/profile_view.dart';
import 'package:hanoigo/presentation/pages/qr_scan/qr_scan_view.dart';
import 'package:hanoigo/presentation/pages/saved_places/saved_places_view.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeViewModel>(HomeViewModel());
  }
}

class HomeView extends MobXView<HomeViewModel> {
  const HomeView({super.key});

  factory HomeView.fromArguments() {
    final args = Get.arguments as Map<String, dynamic>?;
    final initialPageIndex = args?['initialPageIndex'] ?? 0;
    final viewModel = Get.find<HomeViewModel>();
    viewModel.setCurrentPageIndex(initialPageIndex); // Gán giá trị ban đầu
    return const HomeView();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            viewModel.setCurrentPageIndex(index);
          },
          indicatorColor: ColorName.secondaryColor,
          selectedIndex: viewModel.currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.explore),
              icon: Icon(Icons.explore_outlined),
              label: 'Khám phá',
            ),
            NavigationDestination(
              selectedIcon: Badge(child: Icon(Icons.emoji_events)),
              icon: Badge(child: Icon(Icons.emoji_events_outlined)),
              label: 'Thử thách',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.qr_code_scanner),
              icon: Icon(Icons.qr_code_scanner_outlined),
              label: 'Quét AR',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.bookmark),
              icon: Icon(Icons.bookmark_outline),
              label: 'Đã lưu',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person),
              icon: Icon(Icons.person_outline),
              label: 'Cá nhân',
            ),
          ],
        ),
        body: _getPageView(viewModel.currentPageIndex),
      );
    });
  }

  Widget _getPageView(int index) {
    switch (index) {
      case 0:
        return const ExploreView();
      case 1:
        return const ChallengeScreen();
      case 2:
        return const SimpleQRCodeScanner();
      case 3:
        return const SavedPlacesScreen();
      case 4:
        return const ProfileView();
      default:
        return const OnboardingView();
    }
  }
}
