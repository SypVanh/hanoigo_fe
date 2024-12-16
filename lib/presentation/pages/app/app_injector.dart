import 'package:get/get.dart';
import 'package:hanoigo/data/repositories/auth_repository.dart';
import 'package:hanoigo/data/repositories/user_repository.dart';
import 'package:hanoigo/presentation/pages/app/app_router.dart';

class AppInjector {
  static void registerDependencies() {
    /// Router
    Get
      ..put<AppRouter>(AppRouterImpl(), permanent: true)

      /// Repository
      ..put<AuthRepository>(AuthRepository(), permanent: true)
      ..put<UserRepository>(UserRepository(), permanent: true);
  }
}
