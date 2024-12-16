import 'package:hanoigo/data/models/api_input/login_input.dart';
import 'package:hanoigo/data/models/api_input/signin_input.dart';
import 'package:hanoigo/data/models/api_output/auth_output.dart';

class UserRepository {
  Future<AuthOutput?> login(LoginInput input) async {
    return null;
  }

  Future<void> register(SigninInput input) async {}
}
