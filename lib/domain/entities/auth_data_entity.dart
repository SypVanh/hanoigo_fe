import 'package:hanoigo/data/models/storage/auth_data_model.dart';

class AuthDataEntity {
  AuthDataEntity({
    this.idToken,
    required this.isAnonymous,
    required this.accessToken,
    required this.refreshToken,
  });

  factory AuthDataEntity.fromModel(AuthDataModel model) {
    return AuthDataEntity(
      idToken: model.idToken,
      isAnonymous: model.isAnonymous,
      accessToken: model.accessToken,
      refreshToken: model.refreshToken,
    );
  }

  final String? idToken;
  final bool isAnonymous;
  final String accessToken;
  final String refreshToken;

  AuthDataModel toModel() {
    return AuthDataModel(
      idToken: idToken,
      isAnonymous: isAnonymous,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }

  AuthDataEntity copyWith({
    String? idToken,
    bool? isAnonymous,
    String? accessToken,
    String? refreshToken,
  }) {
    return AuthDataEntity(
      idToken: idToken ?? this.idToken,
      isAnonymous: isAnonymous ?? this.isAnonymous,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }
}
