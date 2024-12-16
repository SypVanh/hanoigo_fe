import 'dart:async';

import 'package:hanoigo/domain/usecases/auth_usecase.dart';
import 'package:hanoigo/foundation/architecture/mobx_viewmodel.dart';
import 'package:hanoigo/presentation/pages/app/app_router.dart';
import 'package:mobx/mobx.dart';

part '../../../generated/presentation/pages/signup/signup_viewmodel.g.dart';

class SignUpViewModel = _SignUpViewModel with _$SignUpViewModel;

abstract class _SignUpViewModel extends MobXViewModel<AuthUseCase, AppRouter> with Store {
  // Các biến Observable
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

  // Kiểm tra tính hợp lệ của email
  @action
  void checkEmailValidity(String email) {
    this.email = email;
    isEmailValid = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email);
  }

  // Kiểm tra tính hợp lệ của password
  @action
  void checkPasswordValidity(String password) {
    this.password = password;
    isPasswordValid = password.length >= 6;
  }

  // Phương thức signup (giả định)
  @action
  Future<void> signup() async {
    isLoading = true;

    // Giả sử đây là API gọi đăng nhập
    await Future.delayed(const Duration(seconds: 2));

    // Sau khi đăng nhập thành công
    isLoading = false;
    // Lưu token vào shared preferences hoặc xử lý tiếp
  }

  @action
  Future<void> signupUser() async {
    // signup
    await toLogin();
  }

  Future? toLogin() async {
    await navigator.toLogin();
  }
}
