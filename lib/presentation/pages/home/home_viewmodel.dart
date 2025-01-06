import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hanoigo/domain/usecases/auth_usecase.dart';
import 'package:hanoigo/foundation/architecture/mobx_viewmodel.dart';
import 'package:hanoigo/generated/assets.gen.dart';
import 'package:hanoigo/presentation/pages/app/app_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';

part '../../../generated/presentation/pages/home/home_viewmodel.g.dart';

class HomeViewModel = _HomeViewModel with _$HomeViewModel;

class CollectibleItem {
  final int id;
  final String name;
  final String imagePath;

  CollectibleItem({
    required this.id,
    required this.name,
    required this.imagePath,
  });
}

final List<CollectibleItem> collectibleItems = [
  CollectibleItem(id: 1, name: 'Buffalo', imagePath: Assets.icons.buffalo.path),
  CollectibleItem(id: 2, name: 'Chicken', imagePath: Assets.icons.chicken.path),
  CollectibleItem(id: 3, name: 'Dragon', imagePath: Assets.icons.dragon.path),
  CollectibleItem(id: 4, name: 'Goat', imagePath: Assets.icons.goat.path),
  CollectibleItem(id: 5, name: 'Horse', imagePath: Assets.icons.horse.path),
  CollectibleItem(id: 6, name: 'Monkey', imagePath: Assets.icons.monkey.path),
  CollectibleItem(id: 7, name: 'Snake', imagePath: Assets.icons.snake.path),
];

CollectibleItem getCollectibleItemById(int id) {
  return collectibleItems.firstWhere(
    (item) => item.id == id,
    orElse: () => collectibleItems.first,
  );
}

abstract class _HomeViewModel extends MobXViewModel<AuthUseCase, AppRouter> with Store {
  @observable
  int currentPageIndex = 0;

  /// Profile
  final TextEditingController nameController = TextEditingController();

  @observable
  String userName = 'Vanh';

  @observable
  String? avatarPath;

  @observable
  String selectedLanguage = "Tiếng Việt";

  @override
  void onInit() {
    nameController.text = userName;
    super.onInit();
  }

  @override
  void onClose() {
    nameController.dispose();
    super.onClose();
  }

  @action
  void setCurrentPageIndex(int id) {
    currentPageIndex = id;
  }

  @action
  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      avatarPath = pickedFile.path;
    }
  }

  @action
  void onChange() {
    userName = nameController.text;
  }

  @action
  void setSeletedLanguage(String? value) {
    selectedLanguage = value ?? "Tiếng Việt";
  }

  Future? toChallenge() async {
    await navigator.toHome(id: 1);
  }

  Future? toLeaderboard() async {
    await navigator.toRanking();
  }

  Future? toCollection() async {
    await navigator.toCollection();
  }

  Future? toSearch() async {
    await navigator.toSearch();
  }

  Future? toPersonalizedRoute() async {
    await navigator.toPersonalizedRoute();
  }

  Future? toPlaceDetail(int placeId) async {
    await navigator.toPlaceDetail(id: placeId);
  }

  Future? toCollectAnimal(int placeId) async {
    await navigator.toPlaceDetail(id: placeId);
  }
}
