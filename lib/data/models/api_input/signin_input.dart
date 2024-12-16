import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/data/models/api_input/signin_input.freezed.dart';
part '../../../generated/data/models/api_input/signin_input.g.dart';

@freezed
class SigninInput with _$SigninInput {
  factory SigninInput({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'password') required String password,
  }) = _SigninInput;

  factory SigninInput.fromJson(Map<String, dynamic> json) =>
      _$SigninInputFromJson(json);
}
