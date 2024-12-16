import 'package:get/get.dart';
import 'package:hanoigo/data/models/api_input/login_input.dart';
import 'package:hanoigo/data/models/api_input/signin_input.dart';
import 'package:hanoigo/data/repositories/user_repository.dart';

class UserUseCase {
  final repository = Get.find<UserRepository>();

  Future<void> login(String email, String password) async {
    final loginInput = LoginInput(email: email, password: password);
    await repository.login(loginInput);
  }

  Future<void> signin(String name, String email, String password) async {
    final signinInput = SigninInput(name: name, email: email, password: password);
    await repository.register(signinInput);
  }
}
