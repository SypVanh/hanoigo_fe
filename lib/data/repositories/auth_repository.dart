import 'package:hanoigo/data/models/api_input/login_input.dart';
import 'package:hanoigo/data/models/api_input/signin_input.dart';
import 'package:hanoigo/data/models/api_output/auth_output.dart';
import 'package:hanoigo/data/models/storage/auth_data_model.dart';
import 'package:hanoigo/utils/shared_prefs.dart';

class AuthRepository {
  Future<AuthOutput?> login(LoginInput input) async {
    return null;
  }

  Future<void> signin(SigninInput input) async {}

  AuthDataModel? getAuthData() {
    return SharedPrefs.shared.get<AuthDataModel>(SharedPrefKeys.authData, AuthDataModel.fromJson);
  }

  Future<void> clearAuthData() {
    return SharedPrefs.shared.clear(SharedPrefKeys.authData);
  }

  Future<void> saveAuthData(AuthDataModel data) {
    return SharedPrefs.shared.save(SharedPrefKeys.authData, data.toJson());
  }
}
