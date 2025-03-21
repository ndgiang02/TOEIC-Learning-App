import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../app_exceptions.dart';
import 'base_api_services.dart';

class NetworkApiService implements BaseApiServices {
  final Dio _dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    responseType: ResponseType.json,
  ));

  @override
  Future getGetApiResponse(String url) async {
    if (kDebugMode) {
      print("GET: $url");
    }

    try {
      Response response = await _dio.get(url);
      return _handleResponse(response);
    } on DioException catch (e) {
      _handleDioError(e);
    }
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    if (kDebugMode) {
      print("POST: $url");
      print("Data: $data");
    }

    try {
      Response response = await _dio.post(url, data: data);
      return _handleResponse(response);
    } on DioException catch (e) {
      _handleDioError(e);
    }
  }

  /// **Handle API Response**
  dynamic _handleResponse(Response response) {
    if (kDebugMode) {
      print("Status Code: ${response.statusCode}");
    }

    switch (response.statusCode) {
      case 200:
      case 201:
        return response.data;
      case 400:
        throw BadRequestException(response.data.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.data.toString());
      case 500:
      case 404:
        throw FetchDataException("Server Error: ${response.statusCode}");
      default:
        throw FetchDataException("Unknown Error Occurred");
    }
  }

  /// **Handle Dio Errors**
  void _handleDioError(DioException error) {
    if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout) {
      throw FetchDataException("Connection timeout, please try again.");
    } else if (error.type == DioExceptionType.badResponse) {
      throw FetchDataException("Server error: ${error.response?.statusCode}");
    } else if (error.type == DioExceptionType.unknown) {
      throw NoInternetException("No Internet Connection.");
    } else {
      throw FetchDataException("Unexpected error: ${error.message}");
    }
  }
}
