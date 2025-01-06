import 'dart:async';

import 'package:hanoigo/domain/usecases/auth_usecase.dart';
import 'package:hanoigo/foundation/architecture/mobx_viewmodel.dart';
import 'package:hanoigo/presentation/pages/app/app_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';

part '../../../generated/presentation/pages/signup/signup_viewmodel.g.dart';

class SignUpViewModel = _SignUpViewModel with _$SignUpViewModel;

abstract class _SignUpViewModel extends MobXViewModel<AuthUseCase, AppRouter> with Store {
  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool isEmailValid = false;

  @observable
  bool isPasswordValid = false;

  @observable
  bool isLoading = false;

  @observable
  String? avatarPath;

  @action
  void checkEmailValidity(String email) {
    this.email = email;
    isEmailValid = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email);
  }

  @action
  void checkPasswordValidity(String password) {
    this.password = password;
    isPasswordValid = password.length >= 6;
  }

  @action
  Future<void> signup() async {
    isLoading = true;

    await Future.delayed(const Duration(seconds: 2));

    isLoading = false;
  }

  @action
  Future<void> signupUser() async {
    await toLogin();
  }

  Future? toLogin() async {
    await navigator.toLogin();
  }

  @action
  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      avatarPath = pickedFile.path;
    }
  }
}
