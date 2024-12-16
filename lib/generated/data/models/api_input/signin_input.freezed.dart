// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../data/models/api_input/signin_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SigninInput _$SigninInputFromJson(Map<String, dynamic> json) {
  return _SigninInput.fromJson(json);
}

/// @nodoc
mixin _$SigninInput {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SigninInputCopyWith<SigninInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninInputCopyWith<$Res> {
  factory $SigninInputCopyWith(
          SigninInput value, $Res Function(SigninInput) then) =
      _$SigninInputCopyWithImpl<$Res, SigninInput>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$SigninInputCopyWithImpl<$Res, $Val extends SigninInput>
    implements $SigninInputCopyWith<$Res> {
  _$SigninInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SigninInputImplCopyWith<$Res>
    implements $SigninInputCopyWith<$Res> {
  factory _$$SigninInputImplCopyWith(
          _$SigninInputImpl value, $Res Function(_$SigninInputImpl) then) =
      __$$SigninInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$$SigninInputImplCopyWithImpl<$Res>
    extends _$SigninInputCopyWithImpl<$Res, _$SigninInputImpl>
    implements _$$SigninInputImplCopyWith<$Res> {
  __$$SigninInputImplCopyWithImpl(
      _$SigninInputImpl _value, $Res Function(_$SigninInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SigninInputImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SigninInputImpl implements _SigninInput {
  _$SigninInputImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'password') required this.password});

  factory _$SigninInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SigninInputImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'SigninInput(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninInputImplCopyWith<_$SigninInputImpl> get copyWith =>
      __$$SigninInputImplCopyWithImpl<_$SigninInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SigninInputImplToJson(
      this,
    );
  }
}

abstract class _SigninInput implements SigninInput {
  factory _SigninInput(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'password') required final String password}) =
      _$SigninInputImpl;

  factory _SigninInput.fromJson(Map<String, dynamic> json) =
      _$SigninInputImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SigninInputImplCopyWith<_$SigninInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
