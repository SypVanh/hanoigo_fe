// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../presentation/pages/login/login_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginViewModel on _LoginViewModel, Store {
  late final _$emailAtom =
      Atom(name: '_LoginViewModel.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_LoginViewModel.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$isEmailValidAtom =
      Atom(name: '_LoginViewModel.isEmailValid', context: context);

  @override
  bool get isEmailValid {
    _$isEmailValidAtom.reportRead();
    return super.isEmailValid;
  }

  @override
  set isEmailValid(bool value) {
    _$isEmailValidAtom.reportWrite(value, super.isEmailValid, () {
      super.isEmailValid = value;
    });
  }

  late final _$isPasswordValidAtom =
      Atom(name: '_LoginViewModel.isPasswordValid', context: context);

  @override
  bool get isPasswordValid {
    _$isPasswordValidAtom.reportRead();
    return super.isPasswordValid;
  }

  @override
  set isPasswordValid(bool value) {
    _$isPasswordValidAtom.reportWrite(value, super.isPasswordValid, () {
      super.isPasswordValid = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_LoginViewModel.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('_LoginViewModel.login', context: context);

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  late final _$loginUserAsyncAction =
      AsyncAction('_LoginViewModel.loginUser', context: context);

  @override
  Future<void> loginUser() {
    return _$loginUserAsyncAction.run(() => super.loginUser());
  }

  late final _$_LoginViewModelActionController =
      ActionController(name: '_LoginViewModel', context: context);

  @override
  void checkEmailValidity(String email) {
    final _$actionInfo = _$_LoginViewModelActionController.startAction(
        name: '_LoginViewModel.checkEmailValidity');
    try {
      return super.checkEmailValidity(email);
    } finally {
      _$_LoginViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkPasswordValidity(String password) {
    final _$actionInfo = _$_LoginViewModelActionController.startAction(
        name: '_LoginViewModel.checkPasswordValidity');
    try {
      return super.checkPasswordValidity(password);
    } finally {
      _$_LoginViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
isEmailValid: ${isEmailValid},
isPasswordValid: ${isPasswordValid},
isLoading: ${isLoading}
    ''';
  }
}
