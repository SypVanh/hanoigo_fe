// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../data/models/storage/auth_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthDataModel _$AuthDataModelFromJson(Map<String, dynamic> json) {
  return _AuthDataModel.fromJson(json);
}

/// @nodoc
mixin _$AuthDataModel {
  @JsonKey(name: 'id_token')
  String? get idToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_anonymous')
  bool get isAnonymous => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthDataModelCopyWith<AuthDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDataModelCopyWith<$Res> {
  factory $AuthDataModelCopyWith(
          AuthDataModel value, $Res Function(AuthDataModel) then) =
      _$AuthDataModelCopyWithImpl<$Res, AuthDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_token') String? idToken,
      @JsonKey(name: 'is_anonymous') bool isAnonymous,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$AuthDataModelCopyWithImpl<$Res, $Val extends AuthDataModel>
    implements $AuthDataModelCopyWith<$Res> {
  _$AuthDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = freezed,
    Object? isAnonymous = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthDataModelImplCopyWith<$Res>
    implements $AuthDataModelCopyWith<$Res> {
  factory _$$AuthDataModelImplCopyWith(
          _$AuthDataModelImpl value, $Res Function(_$AuthDataModelImpl) then) =
      __$$AuthDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_token') String? idToken,
      @JsonKey(name: 'is_anonymous') bool isAnonymous,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$$AuthDataModelImplCopyWithImpl<$Res>
    extends _$AuthDataModelCopyWithImpl<$Res, _$AuthDataModelImpl>
    implements _$$AuthDataModelImplCopyWith<$Res> {
  __$$AuthDataModelImplCopyWithImpl(
      _$AuthDataModelImpl _value, $Res Function(_$AuthDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = freezed,
    Object? isAnonymous = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$AuthDataModelImpl(
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthDataModelImpl implements _AuthDataModel {
  const _$AuthDataModelImpl(
      {@JsonKey(name: 'id_token') this.idToken,
      @JsonKey(name: 'is_anonymous') this.isAnonymous = true,
      @JsonKey(name: 'access_token') this.accessToken = '',
      @JsonKey(name: 'refresh_token') this.refreshToken = ''});

  factory _$AuthDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'id_token')
  final String? idToken;
  @override
  @JsonKey(name: 'is_anonymous')
  final bool isAnonymous;
  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'AuthDataModel(idToken: $idToken, isAnonymous: $isAnonymous, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthDataModelImpl &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idToken, isAnonymous, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthDataModelImplCopyWith<_$AuthDataModelImpl> get copyWith =>
      __$$AuthDataModelImplCopyWithImpl<_$AuthDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthDataModelImplToJson(
      this,
    );
  }
}

abstract class _AuthDataModel implements AuthDataModel {
  const factory _AuthDataModel(
          {@JsonKey(name: 'id_token') final String? idToken,
          @JsonKey(name: 'is_anonymous') final bool isAnonymous,
          @JsonKey(name: 'access_token') final String accessToken,
          @JsonKey(name: 'refresh_token') final String refreshToken}) =
      _$AuthDataModelImpl;

  factory _AuthDataModel.fromJson(Map<String, dynamic> json) =
      _$AuthDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'id_token')
  String? get idToken;
  @override
  @JsonKey(name: 'is_anonymous')
  bool get isAnonymous;
  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$AuthDataModelImplCopyWith<_$AuthDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
