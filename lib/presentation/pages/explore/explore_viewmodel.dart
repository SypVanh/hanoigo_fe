import 'dart:async';
import 'package:hanoigo/domain/usecases/auth_usecase.dart';
import 'package:hanoigo/foundation/architecture/mobx_viewmodel.dart';
import 'package:hanoigo/presentation/pages/app/app_router.dart';
import 'package:mobx/mobx.dart';

part '../../../generated/presentation/pages/explore/explore_viewmodel.g.dart';

class ExploreViewModel = _ExploreViewModel with _$ExploreViewModel;

abstract class _ExploreViewModel extends MobXViewModel<AuthUseCase, AppRouter> with Store {
  Future<void> toSignup() async {
    await navigator.toSignup();
  }
}
