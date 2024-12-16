import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hanoigo/data/api/adapter/dio_adapter.dart';
import 'package:hanoigo/data/api/app_urls.dart';
import 'package:hanoigo/data/api/interceptors/error_interceptor.dart';
import 'package:hanoigo/data/api/interceptors/header_interceptor.dart';
import 'package:hanoigo/data/api/interceptors/logger_interceptor.dart';

class AppDio extends DioMixin implements Dio {
  AppDio._(bool ignoredToken, [BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: options?.baseUrl ?? APIUserUrls.endpoint,
      contentType: contentType,
      connectTimeout: Duration(seconds: readTimeOuts),
      receiveTimeout: Duration(seconds: readTimeOuts),
      sendTimeout: Duration(seconds: writeTimeOuts),
    );

    this.options = options;

    /// Add logger in debug mode
    if (kDebugMode) {
      interceptors.add(dioLoggerInterceptor);
    }

    /// Add default user agent
    if (!ignoredToken) {
      interceptors
        ..add(HeaderInterceptor())
        ..add(ErrorInterceptor(this));
    }
    httpClientAdapter = getAdapter();
  }
  final contentType = 'application/json';
  final connectionTimeOuts = 120;
  final readTimeOuts = 120;
  final writeTimeOuts = 120;

  static AppDio getInstance({
    bool ignoredToken = false,
    BaseOptions? options,
  }) =>
      AppDio._(ignoredToken, options);
}
