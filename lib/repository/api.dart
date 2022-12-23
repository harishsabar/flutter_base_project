import 'dart:convert';
import 'package:dio/dio.dart';

class Api {
  final Dio _dio = Dio(BaseOptions(
      followRedirects: false,
      baseUrl: BASED_URL,
      validateStatus: (status) {
        return status! < 500;
      },
      receiveTimeout: 30000,
      connectTimeout: 30000,
      contentType: Headers.formUrlEncodedContentType));

  Future<Response> request(RequestType type, dynamic params, String url,
      {bool isJson = false}) async {
    _dio.interceptors.add(LogInterceptor(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        request: true));
    Response response;
    switch (type) {
      case RequestType.GET:
        response = await _dio.get(url, queryParameters: params);
        break;
      case RequestType.DELETE:
        response = await _dio.delete(url, data: params);
        break;
      case RequestType.PUT:
        response = await _dio.put(url,
            data: params,
            options: params == null
                ? Options(contentType: Headers.jsonContentType)
                : Options(contentType: Headers.formUrlEncodedContentType));
        break;
      default:
        if (isJson) {
          response = await _dio.post(url,
              data: jsonEncode(params),
              options: Options(contentType: Headers.jsonContentType));
        } else {
          response = await _dio.post(url,
              data: params,
              // options: Options(contentType: Headers.formUrlEncodedContentType)
              );
        }
    }
    return response;
  }

  Future<Response> formData(
      RequestType type, FormData data, String url) async {
    _dio.interceptors.add(LogInterceptor(
      requestBody: false,
      requestHeader: false,
      responseHeader: false,
      responseBody: false,
    ));
    Response response;
    switch (type) {
      case RequestType.PUT:
        response = await _dio.put(url, data: data);
        break;
      default:
        response = await _dio.post(url, data: data);
    }
    return response;
  }
}

const BASED_URL = "http://192.168.0.9:5001/api/";
// const BASED_URL = "https://ace0-182-253-159-15.ap.ngrok.io/api/";

enum RequestType { POST, PUT, DELETE, GET }
