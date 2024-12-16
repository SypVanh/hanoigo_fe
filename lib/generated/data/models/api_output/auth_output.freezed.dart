// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../data/models/api_output/auth_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthOutput _$AuthOutputFromJson(Map<String, dynamic> json) {
  return _AuthOutput.fromJson(json);
}

/// @nodoc
mixin _$AuthOutput {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthOutputCopyWith<AuthOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthOutputCopyWith<$Res> {
  factory $AuthOutputCopyWith(
          AuthOutput value, $Res Function(AuthOutput) then) =
      _$AuthOutputCopyWithImpl<$Res, AuthOutput>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'token') String? token});
}

/// @nodoc
class _$AuthOutputCopyWithImpl<$Res, $Val extends AuthOutput>
    implements $AuthOutputCopyWith<$Res> {
  _$AuthOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthOutputImplCopyWith<$Res>
    implements $AuthOutputCopyWith<$Res> {
  factory _$$AuthOutputImplCopyWith(
          _$AuthOutputImpl value, $Res Function(_$AuthOutputImpl) then) =
      __$$AuthOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'token') String? token});
}

/// @nodoc
class __$$AuthOutputImplCopyWithImpl<$Res>
    extends _$AuthOutputCopyWithImpl<$Res, _$AuthOutputImpl>
    implements _$$AuthOutputImplCopyWith<$Res> {
  __$$AuthOutputImplCopyWithImpl(
      _$AuthOutputImpl _value, $Res Function(_$AuthOutputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? token = freezed,
  }) {
    return _then(_$AuthOutputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$AuthOutputImpl implements _AuthOutput {
  _$AuthOutputImpl(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'token') this.token});

  factory _$AuthOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthOutputImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'token')
  final String? token;

  @override
  String toString() {
    return 'AuthOutput(id: $id, email: $email, name: $name, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthOutputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, name, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthOutputImplCopyWith<_$AuthOutputImpl> get copyWith =>
      __$$AuthOutputImplCopyWithImpl<_$AuthOutputImpl>(this, _$identity);
}

abstract class _AuthOutput implements AuthOutput {
  factory _AuthOutput(
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'token') final String? token}) = _$AuthOutputImpl;

  factory _AuthOutput.fromJson(Map<String, dynamic> json) =
      _$AuthOutputImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'token')
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$AuthOutputImplCopyWith<_$AuthOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
