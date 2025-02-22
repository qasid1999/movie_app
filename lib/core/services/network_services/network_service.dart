// ignore_for_file: constant_identifier_names
import 'dart:developer';
import 'package:movie_app/core/services/network_services/netwwork_exception.dart';
import '../../helpers/imports_helper.dart';

enum RequestMethod {
  POST,
  GET,
  PUT,
  PATCH,
  DELETE,
}

class NetworkService {
  static final Dio _dio = NetworkConfig().dio;
  static final CancelToken cancelToken = CancelToken();
  static LoaderProvider _loaderProvider = readProvider<LoaderProvider>();

  static Future<NetworkResponse> request(
    String path, {
    required RequestMethod method,
    dynamic body,
    Map<String, dynamic>? formData,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      queryParameters = {
        ...?queryParameters, // If queryParameters is null, it won't cause an issue
        "api_key": "5c52e5cc5b2c4053e27bf4763094b27b",
      };
       // Add params to queryParameters// Add params to it
       if (_loaderProvider.getIsRefreshed) {
        _loaderProvider.hideLoader();
      } else {
        _loaderProvider
          ..hideLoader()
          ..showLoader();
      }
      String token = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1YzUyZTVjYzViMmM0MDUzZTI3YmY0NzYzMDk0YjI3YiIsIm5iZiI6MTc0MDExMDMyMi45MTI5OTk5LCJzdWIiOiI2N2I3ZjlmMjU1MDMyOTI3NTYyMjUxMDUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.1kd8WyRJ87_CN5WFM31ZydrvGY7EATmVlRD6AaWCxEE";
      if (kDebugMode) {
        log('Method: ${describeEnum(method)}');
        log('URL: $path');
        log('Query Parameters: $queryParameters');
        log('Data: $body');
        log('Form Data: $formData');
        log("Token: $token");
      }
      _dio.options.headers[HttpHeaders.authorizationHeader] =
          'Bearer $token';
      _dio.options.method = describeEnum(method);
      // Make request
      var response = await _dio.request(
        _dio.options.baseUrl = _configApiUrl(path),
        data: body ?? (formData != null ? FormData.fromMap(formData) : null),
        queryParameters: queryParameters,
        cancelToken: cancelToken,
      );
      // Logging response data
      if (kDebugMode) {
        log('Response Data: ${response.data}');
      }

      // Success response handling
      if (response.statusCode == 200 || response.statusCode == 201) {
        return _configure200And201ResponseData(response);
      } else {
        var errorMessage = response.data['message'] ??
            'Error Data: ${response.statusCode.toString()}';
        throw NetworkException(errorMessage.toString());
      }
    } on DioException catch (e) {
      print("Error:::: ${e.toString()}");
      if (e.response?.statusCode == 503) {
        throw "Services not available. Please try again later";
      }
      if (e.response?.statusCode == 400) {
        var errorMessage = _handleApiError(e.response);
        throw NetworkException(errorMessage.toString());
      } else {
        throw "Unknown error occurred";
      }
    } catch (e) {
      log('Unexpected error: ${e.toString()}');
      throw NetworkException(e.toString());
    } finally {
      _loaderProvider.hideLoader();
      if (_loaderProvider.getIsRefreshed) {
        _loaderProvider.disableRefresher();
      }
    }
  }

  static String _configApiUrl(String path) {
    return NetworkPaths.baseUrl + path;
  }

  static NetworkResponse _configure200And201ResponseData(
      Response<dynamic> response) {
    // Check for empty response
    if (response.data == null ||
        (response.data is String && response.data.isEmpty) ||
        (response.data is List && response.data.isEmpty)) {
      throw "Data Not Found";
    }

    // Check if response contains an error message
    if (response.data is Map &&
        response.data.containsKey('message') &&
        !response.data.containsKey('data') &&
        response.data['status'] != true) {
      var errorMessage = response.data['message'];
      throw errorMessage.toString();
    }

    // Return the NetworkResponse with the appropriate data
    return NetworkResponse(
      statusCode: response.statusCode!,
      responseData: response.data.toString().isEmpty
          ? <String, dynamic>{}
          : response.data,
    );
  }

  static String _handleApiError(Response<dynamic>? apiResponse) {
    // Initialize a list to store error messages
    List<String> errorMessages = [];

    // Check if the response contains a list of errors
    if (apiResponse?.data['errors'] != null) {
      // Iterate over the list of errors and collect each error message
      List<dynamic> errors = apiResponse?.data["errors"] ?? [];
      for (var error in errors) {
        // Extract the error message and add it to the list
        String errorMessage = error["message"];
        errorMessages.add(errorMessage);
      }
    } else if (apiResponse?.data['message'] != null) {
      // If the response contains a single error message, collect it
      String errorMessage = apiResponse?.data["message"] ?? "";
      errorMessages.add(errorMessage);
    } else {
      // Handle other scenarios (e.g., unexpected response structure)
      errorMessages.add("Unexpected error occurred.");
    }

    // Combine the error messages into a single string, separated by new lines
    String combinedErrorMessage = errorMessages.join('\n');

    // Return the combined error message
    return combinedErrorMessage;
  }
}

class NetworkException implements Exception {
  final String message;

  NetworkException(this.message);

  @override
  String toString() => message;
}
