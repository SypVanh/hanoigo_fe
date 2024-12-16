// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../data/models/storage/auth_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthDataModelImpl _$$AuthDataModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthDataModelImpl(
      idToken: json['id_token'] as String?,
      isAnonymous: json['is_anonymous'] as bool? ?? true,
      accessToken: json['access_token'] as String? ?? '',
      refreshToken: json['refresh_token'] as String? ?? '',
    );

Map<String, dynamic> _$$AuthDataModelImplToJson(_$AuthDataModelImpl instance) =>
    <String, dynamic>{
      'id_token': instance.idToken,
      'is_anonymous': instance.isAnonymous,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
