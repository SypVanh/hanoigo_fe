import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/data/models/api_output/auth_output.freezed.dart';
part '../../../generated/data/models/api_output/auth_output.g.dart';

@Freezed(toJson: false)
class AuthOutput with _$AuthOutput {
  factory AuthOutput({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'token') String? token,
  }) = _AuthOutput;

  factory AuthOutput.fromJson(Map<String, dynamic> json) =>
      _$AuthOutputFromJson(json);
}
