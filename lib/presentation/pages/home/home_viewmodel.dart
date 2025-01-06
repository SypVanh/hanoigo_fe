import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hanoigo/domain/usecases/auth_usecase.dart';
import 'package:hanoigo/foundation/architecture/mobx_viewmodel.dart';
import 'package:hanoigo/presentation/pages/app/app_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';

part '../../../generated/presentation/pages/home/home_viewmodel.g.dart';

class HomeViewModel = _HomeViewModel with _$HomeViewModel;

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
}
