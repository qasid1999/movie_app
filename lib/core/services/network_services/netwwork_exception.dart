
import 'package:dio/dio.dart';

// Custom exception classes
class NetworkException implements Exception {
  final String message;
  NetworkException(this.message);
}

class BadRequestException extends NetworkException {
  BadRequestException(String message) : super(message);
}

class UnauthorizedException extends NetworkException {
  UnauthorizedException(String message) : super(message);
}

class ForbiddenException extends NetworkException {
  ForbiddenException(String message) : super(message);
}

class NotFoundException extends NetworkException {
  NotFoundException(String message) : super(message);
}

class InternalServerErrorException extends NetworkException {
  InternalServerErrorException(String message) : super(message);
}

class BadCertificateException extends NetworkException {
  BadCertificateException(String message) : super(message);
}

class BadResponseException extends NetworkException {
  BadResponseException(String message) : super(message);
}

class ConnectionErrorException extends NetworkException {
  ConnectionErrorException(String message) : super(message);
}
