import '../helpers/imports_helper.dart';

abstract class TypedProvider<T> extends BaseProvider {
  T? _data;

  T? get getData => _data;

  @override
  void disposeValues() {
    _data = null;
    super.disposeValues();
  }

  void setData(T newData) {
    _data = newData;
    notifyListeners();
  }

  T fromJson(Map<String, dynamic> json);

  Future<void> fetchData();
}
