import 'package:dio/dio.dart' hide Headers;
import 'package:hanoigo/data/api/app_dio.dart';
import 'package:hanoigo/data/api/app_urls.dart';
import 'package:retrofit/retrofit.dart';

part '../../../generated/data/api/apis/api_user.g.dart';

@RestApi()
abstract class APIUser {
  factory APIUser() => _APIUser(
        AppDio.getInstance(
          options: BaseOptions(baseUrl: APIUserUrls.endpoint),
        ),
      );

  static final APIUser shared = APIUser();

  @GET(APIUserUrls.userInfo)
  Future<void> getUserInfo();
}
