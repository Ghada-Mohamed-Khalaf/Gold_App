

import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
        BaseOptions(
          baseUrl: "https://www.goldapi.io/api/",
          receiveDataWhenStatusError: true,

        )

    );

    Future<Response> getData(String url) {
      dio!.options.headers = {
        "x-access-token": "goldapi-z6cgsm1au9al1-io"
      };
      return dio!.get(url);
    }
  }

  static getData(String s) {}
}
