import '../helpers/imports_helper.dart';

abstract class BaseProvider with ChangeNotifier {
  bool _isLoading = false;
  String? _error;
  bool _isRefreshed = false;
  bool get getIsLoading => _isLoading;
  String? get getError => _error;
  bool get getIsRefreshed => _isRefreshed;

  bool navigatorLoader = false;
  void setNavigatorLoader(bool navigatorLoader) {
    this.navigatorLoader = navigatorLoader;
    notifyListeners();
  }
  void disposeValues() {
    _isLoading = false;
    _error = null;
    notifyListeners();
  }

  void setIsLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  void setIsRefresher(bool isRefresher){
     _isRefreshed = isRefresher;
     notifyListeners();
  }

  void setError(String error) {
    _error = error;
    notifyListeners();
  }
}
