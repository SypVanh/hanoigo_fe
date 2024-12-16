import 'package:dio/dio.dart' hide Headers;
import 'package:hanoigo/data/api/app_dio.dart';
import 'package:hanoigo/data/api/app_urls.dart';
import 'package:retrofit/retrofit.dart';

part '../../../generated/data/api/apis/api_places.g.dart';

@RestApi()
abstract class APIPlaces {
  factory APIPlaces() => _APIPlaces(
        AppDio.getInstance(
          options: BaseOptions(baseUrl: APIPlaceUrls.endpoint),
        ),
      );

  static final APIPlaces shared = APIPlaces();

  @GET(APIPlaceUrls.places)
  Future<dynamic> getPlaces();
}
