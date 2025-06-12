import 'package:dio/dio.dart';

abstract class Failure {
  final String erorMessage;

  Failure(this.erorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            'Connection timeout. Please check your internet connection.');
      case DioExceptionType.sendTimeout:
        return ServerFailure(
            'Send timeout. The request took too long to reach the server.');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            'Receive timeout. The server took too long to respond.');
      case DioExceptionType.badCertificate:
        return ServerFailure(
            'Invalid SSL certificate. The connection is not secure.');
      case DioExceptionType.badResponse:
        final statusCode = dioError.response?.statusCode;
        final message = _handleBadResponse(statusCode);
        return ServerFailure(message);
      case DioExceptionType.cancel:
        return ServerFailure('Request was cancelled.');
      case DioExceptionType.connectionError:
        return ServerFailure(
            'No internet connection or server is unreachable.');
      case DioExceptionType.unknown:
      default:
        return ServerFailure(
            'Unexpected error occurred. Please try again later.');
    }
  }

  static String _handleBadResponse(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'Bad request. Please check the data you sent.';
      case 401:
        return 'Unauthorized. Please log in again.';
      case 403:
        return 'Forbidden. You don\'t have permission to access this resource.';
      case 404:
        return 'Resource not found. Please check the URL.';
      case 500:
        return 'Internal server error. Please try again later.';
      case 502:
        return 'Bad gateway. The server returned an invalid response.';
      case 503:
        return 'Service unavailable. The server may be down.';
      default:
        return 'Server error with status code: $statusCode';
    }
  }
}
