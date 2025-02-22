import 'package:movie_app/core/db/app_database.dart';
import 'package:movie_app/core/helpers/imports_helper.dart';

class SeatController extends BaseProvider {
  int selectedDayIndex = 0;
  setSelectedDayIndex(int selectedDayIndex) {
    this.selectedDayIndex = selectedDayIndex;
    notifyListeners();
  }

  int selectedSeatIndex = 0;
  setSelectedSeatIndex(int selectedSeatIndex) {
    this.selectedSeatIndex = selectedSeatIndex;
    notifyListeners();
  }

  @override
  void disposeValues() {
    notifyListeners();
    // TODO: implement disposeValues
  }
}
