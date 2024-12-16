import 'dart:async';

import 'package:hanoigo/domain/usecases/auth_usecase.dart';
import 'package:hanoigo/foundation/architecture/mobx_viewmodel.dart';
import 'package:hanoigo/presentation/pages/app/app_router.dart';
import 'package:mobx/mobx.dart';

part '../../../generated/presentation/pages/onboarding/onboarding_viewmodel.g.dart';

class OnboardingViewModel = _OnboardingViewModel with _$OnboardingViewModel;

abstract class _OnboardingViewModel extends MobXViewModel<AuthUseCase, AppRouter> with Store {
  @observable
  bool isLoading = true;

  @override
  void onInit() {
    unawaited(setLoadingStatus());
    super.onInit();
  }

  Future<void> setLoadingStatus() async {
    await Future.delayed(const Duration(seconds: 10));
    isLoading = false;
  }

  bool isAuthenticated() {
    final user = useCase.getAuthData();
    return user != null;
  }

  Future? handleNavigate() async {
    isAuthenticated() ? toHome() : toLogin();
  }

  Future? toLogin() async {
    await navigator.toLogin();
  }

  Future? toHome() async {
    await navigator.toHome();
  }
}
