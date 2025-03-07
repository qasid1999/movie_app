import 'package:movie_app/core/helpers/imports_helper.dart';

enum ToastType { error, success, information, normal }

class ToastUtils {
  static void showToast(
    String message, {
    ToastType toastType = ToastType.normal,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: _getToastBgColor(toastType),
      textColor: Colors.white,
      fontSize: 14.0,
    );
  }

  static Color? _getToastBgColor(ToastType toastType) {
    switch (toastType) {
      case ToastType.normal:
        return null;
      case ToastType.success:
        return Colors.green;
      case ToastType.error:
        return Colors.red;
      default:
        return null;
    }
  }

  /* display error */
  static void showErrorToast(String message) {
    showToast(message, toastType: ToastType.error);
  }

  static void showInfoToast(String message) {
    showToast(message, toastType: ToastType.information);
  }

  static void showSuccessToast(String message) {
    showToast(message, toastType: ToastType.success);
  }

  static void showDebug(String message) {
    if (kDebugMode) {
      showToast('D - $message');
    }
  }

  static void showPermissionMissingToast(context) {
    showErrorToast("Permissions not sufficient"); //  TODO @mouhamed
  }
}
