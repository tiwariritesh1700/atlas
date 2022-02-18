import 'package:dio/dio.dart';

class NetworkHandler {
  static final NetworkHandler _networkHandler = NetworkHandler._internal();

  factory NetworkHandler() {
    return _networkHandler;
  }

  NetworkHandler._internal();
  final Dio _dio = Dio();

//Dio get method
  Future getData({
    required String url,
    String? token,
  }) async {
    try {
      Response response = await _dio.get(url,options: Options(headers: await getHeaders()));
      return response;
    } on DioError catch (e) {
      print(e);
    }
  }

  //Dio get method
  Future getDataWithQueryParameters({
    required String url,
    String? token,
     required Map<String,dynamic> queryParameters,
  }) async {
    try {
      Response response = await _dio.get(url,options: Options(headers: await getHeaders(),),queryParameters:queryParameters );
      return response;
    } on DioError catch (e) {
      print(e);
    }
  }
  static Future<Map<String, String>> getHeaders() async {

    return{
      "Content-Type":"application/json",
      "Accept" : "application/json",
      "lancode":"en",
      "platform":"android",
      "timezone":"Asia/Kolkata",
      "appversion":"1.0.1",
    };
  }
}
