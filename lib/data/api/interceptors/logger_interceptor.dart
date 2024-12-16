import 'dart:developer';

import 'package:dio/dio.dart';

final dioLoggerInterceptor = InterceptorsWrapper(
  onRequest: (RequestOptions options, handler) {
    String headers = '';
    options.headers.forEach((key, value) {
      headers += '| $key: $value';
    });

    _log(
      '┌------------------------------------------------------------------------------',
    );
    _log('''
| Request: ${options.method} ${options.uri}
| ${options.data}
| Headers:\n$headers''');
    _log(options.uri.toString());
    _log(
      '├------------------------------------------------------------------------------',
    );
    handler.next(options); //continue
  },
  onResponse: (Response response, handler) async {
    _log('| Response [code ${response.statusCode}]: ${response.data}');
    _log(
      '└------------------------------------------------------------------------------',
    );
    handler.next(response); //continue
  },
  onError: (DioException error, handler) async {
    _log('| Error: ${error.error}: ${error.response}');
    _log(
      '└------------------------------------------------------------------------------',
    );
    handler.next(error); //continue
  },
);

void _log(String message) {
  log(message, name: 'API LOG');
}
