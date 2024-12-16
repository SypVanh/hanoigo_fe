// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../data/models/api_input/signin_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SigninInputImpl _$$SigninInputImplFromJson(Map<String, dynamic> json) =>
    _$SigninInputImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$SigninInputImplToJson(_$SigninInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
