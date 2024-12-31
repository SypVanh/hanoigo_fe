import 'package:flutter/material.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/pages/challenge/challenge_view.dart';
import 'package:hanoigo/presentation/pages/collect_success/collect_success_view.dart';
import 'package:hanoigo/presentation/pages/collection/collection_view.dart';
import 'package:hanoigo/presentation/pages/explore/explore_view.dart';
import 'package:hanoigo/presentation/pages/leaderboard/leader_board_view.dart';
import 'package:hanoigo/presentation/pages/onboarding/onboarding_view.dart';
import 'package:hanoigo/presentation/pages/personalized_route/personalized_route_view.dart';
import 'package:hanoigo/presentation/pages/profile/profile_view.dart';
import 'package:hanoigo/presentation/pages/qr_scan/qr_scan_view.dart';
import 'package:hanoigo/presentation/pages/saved_places/saved_places_view.dart';
import 'package:hanoigo/presentation/pages/search/search_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: ColorName.secondaryColor,
        selectedIndex: currentPageIndex,
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
      body: _getPageView(currentPageIndex),
    );
  }

  // Hàm này sẽ trả về widget tương ứng với mỗi trang
  Widget _getPageView(int index) {
    switch (index) {
      case 0:
        return const SearchScreen();
      case 1:
        return const ChallengeScreen();
      case 2:
        return const SimpleQRCodeScanner();
      case 3:
        return const SavedPlacesScreen();
      case 4:
        return const ProfileView();
      default:
        return const OnboardingView(); // Mặc định là trang Home
    }
  }
}
