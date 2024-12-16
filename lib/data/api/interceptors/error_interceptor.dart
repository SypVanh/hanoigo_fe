import 'dart:io';

import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  ErrorInterceptor(this.dio);

  final Dio dio;

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
        break;
      case DioExceptionType.sendTimeout:
        break;
      default:
        switch (err.response?.statusCode) {
          case HttpStatus.unauthorized: // 401
            //
            break;
          case HttpStatus.badRequest: // 400
          case HttpStatus.notFound: // 404
          case HttpStatus.methodNotAllowed: // 405
          case HttpStatus.unprocessableEntity: // 422
          case HttpStatus.internalServerError: // 500
          case HttpStatus.badGateway: // 502
          case HttpStatus.serviceUnavailable: // 503
          case HttpStatus.gatewayTimeout: // 504
          default:
            //
            break;
        }
        break;
    }
    handler.next(err);
  }
}
