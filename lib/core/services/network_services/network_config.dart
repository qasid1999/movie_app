import '../../helpers/imports_helper.dart';

class NetworkConfig {
  static final NetworkConfig _singleton = NetworkConfig._internal();

  factory NetworkConfig() => _singleton;

  late Dio dio;

  NetworkConfig._internal() {
    //creates the singleton instance
    dio = Dio();
    // Set default configs
    dio.options.baseUrl = NetworkPaths.baseUrl;
    dio.options.connectTimeout = const Duration(minutes: 2);
    dio.options.receiveTimeout = const Duration(minutes: 2);
  }
  //TODO @Qasid remove if unnecessary
//
// // Use the `FromJsonFunction` type alias as the constraint for `T`
// static List<T> configListTypeResponse<T>(NetworkResponse value, FromJsonFunction<T> fromJsonFunction) {
//   List<T> modelList = [];
//
//   // Iterate through each element in the response data
//   for (var e in value.responseData) {
//     // Use the provided `fromJsonFunction` to create an instance of `T`
//     T model = fromJsonFunction(e);
//     modelList.add(model);
//   }
//
//   return modelList;
// }
}
// Define an interface with the fromJson method
typedef FromJsonFunction<T> = T Function(Map<String, dynamic> json);
