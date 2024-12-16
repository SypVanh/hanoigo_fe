import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hanoigo/data/repositories/auth_repository.dart';

class HeaderInterceptor extends InterceptorsWrapper {
  final String userAgentKey = 'User-Agent';
  final String authHeaderKey = 'Authorization';
  final String bearer = 'Bearer';

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final repository = Get.find<AuthRepository>();
    final authData = repository.getAuthData();

    final localUser = repository.getAuthData();
    final shouldIgnoreAuthorization = localUser == null;

    if (authData != null && authData.accessToken.isNotEmpty && !shouldIgnoreAuthorization) {
      options.headers = {...options.headers, 'Authorization': 'Bearer ${authData.accessToken}'};
    }
    handler.next(options);
  }
}
