import '../helpers/imports_helper.dart';

T readProvider<T>() {
  final refactoredProvider = currentContext.read<T>();
  return refactoredProvider;
}
