import 'package:dio/dio.dart';

class Api_Service {
  final _baseurl = 'https://www.googleapis.com/books/v1/volumes';
  final Dio dio;
  Api_Service(this.dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await dio.get('$_baseurl$endPoint');
    return response.data;
  }
}
