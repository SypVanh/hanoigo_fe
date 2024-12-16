import 'package:get/get.dart';
import 'package:hanoigo/domain/entities/auth_data_entity.dart';
import 'package:hanoigo/data/repositories/auth_repository.dart';

class AuthUseCase {
  final repository = Get.find<AuthRepository>();

  AuthDataEntity? getAuthData() {
    final authDataModel = repository.getAuthData();
    return authDataModel == null ? null : AuthDataEntity.fromModel(authDataModel);
  }

  Future<void> saveAuthData(AuthDataEntity authDataEntity) {
    return repository.saveAuthData(authDataEntity.toModel());
  }

  Future<void> clearAuthData() {
    return repository.clearAuthData();
  }
}
