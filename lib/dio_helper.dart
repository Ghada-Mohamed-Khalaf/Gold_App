import 'package:dio/dio.dart';

class DioHelper{
  static Dio? dio;

  static init(){
    dio=Dio(
      BaseOptions(
        baseUrl: "https://www.goldapi.io/api/",
        receiveDataWhenStatusError: true,

      )

    );


  }

}