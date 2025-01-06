import 'dart:async';
import 'package:hanoigo/domain/usecases/auth_usecase.dart';
import 'package:hanoigo/foundation/architecture/mobx_viewmodel.dart';
import 'package:hanoigo/presentation/pages/app/app_router.dart';
import 'package:mobx/mobx.dart';

part '../../../generated/presentation/pages/home/home_viewmodel.g.dart';

class HomeViewModel = _HomeViewModel with _$HomeViewModel;

abstract class _HomeViewModel extends MobXViewModel<AuthUseCase, AppRouter> with Store {
  @observable
  int currentPageIndex = 0;

  @action
  void setCurrentPageIndex(int id) {
    currentPageIndex = id;
  }

  Future<void> toChallenge() async {
    await navigator.toHome(id: 1);
  }

  Future<void> toLeaderboard() async {
    await navigator.toRanking();
  }

  Future<void> toCollection() async {
    await navigator.toCollection();
  }
}
