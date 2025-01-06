import 'dart:async';

import 'package:hanoigo/domain/usecases/auth_usecase.dart';
import 'package:hanoigo/foundation/architecture/mobx_viewmodel.dart';
import 'package:hanoigo/presentation/pages/app/app_router.dart';
import 'package:mobx/mobx.dart';

part '../../../generated/presentation/pages/login/login_viewmodel.g.dart';

class LoginViewModel = _LoginViewModel with _$LoginViewModel;

abstract class _LoginViewModel extends MobXViewModel<AuthUseCase, AppRouter> with Store {
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
  Future<void> login() async {
    isLoading = true;

    await Future.delayed(const Duration(seconds: 2));

    isLoading = false;
  }

  @action
  Future<void> loginUser() async {
    await toHome();
  }

  Future? toHome() async {
    await navigator.toHome();
  }

  Future? toSignup() async {
    await navigator.toSignup();
  }
}
