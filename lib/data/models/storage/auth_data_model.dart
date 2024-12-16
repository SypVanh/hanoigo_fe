import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/data/models/storage/auth_data_model.freezed.dart';
part '../../../generated/data/models/storage/auth_data_model.g.dart';

@freezed
class AuthDataModel with _$AuthDataModel {
  const factory AuthDataModel({
    @JsonKey(name: 'id_token') String? idToken,
    @JsonKey(name: 'is_anonymous') @Default(true) bool isAnonymous,
    @JsonKey(name: 'access_token') @Default('') String accessToken,
    @JsonKey(name: 'refresh_token') @Default('') String refreshToken,
  }) = _AuthDataModel;

  factory AuthDataModel.fromJson(Map<String, dynamic> json) => _$AuthDataModelFromJson(json);
}
