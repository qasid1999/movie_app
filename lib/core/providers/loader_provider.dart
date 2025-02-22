import '../helpers/imports_helper.dart';

class LoaderProvider extends BaseProvider {
  void showLoader() {
    setIsLoading(true);
    notifyListeners();
  }
  
  void hideLoader() {
    setIsLoading(false);
    notifyListeners();
  }

  enableRefresher(){
    setIsRefresher(true);
    notifyListeners();
  }

  disableRefresher(){
    setIsRefresher(false);
    notifyListeners();
  }
}
