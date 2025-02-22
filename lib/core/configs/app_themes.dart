import '../helpers/imports_helper.dart';

class AppTheme {
  final Color _primaryColor = const Color(0xffF6F6FA);
  final Color _secondaryColor = const Color(0xff2E2739);
  final Color _borderColor = const Color(0xffD1D1D1);
  final Color _lightGreyColor = const Color(0xffF6F6FA);
  final Color darkGrey = const Color(0xff827D88);
  final Color _whiteColor = const Color(0xffFFFFFF);
  final Color _redClr = const Color(0xffFB3F3F);
  final Color _boxShadowColor = const Color(0xffCDBDBD);
  final Color _hintColor = const Color(0xff717171);
  final Color _surfaceColor = const Color(0xffFFFFFF);
  final Color _fieldColor = const Color(0xffF9F9F9);
  final Color skyBlue = const Color(0xFF61C3F2);
  final Color darkYellow = const Color(0xFFCD9D0F);
  final Color darkBlue = const Color(0xFF564CA3);

  ThemeData lightTheme(BuildContext context) {
    final theme = Theme.of(context);
    return ThemeData(
      fontFamily: "Poppins",
      scaffoldBackgroundColor: _lightGreyColor,
      primaryColor: _primaryColor,
       inputDecorationTheme: InputDecorationTheme(
        labelStyle: theme.textTheme.bodyMedium!.copyWith(
          color: theme.colorScheme.onBackground.withOpacity(0.5),
        ),
        hintStyle: theme.textTheme.bodyMedium!.copyWith(color: _hintColor),
        border: _border(theme.colorScheme.outline),
        focusedBorder: _border(theme.primaryColor),
        enabledBorder: _border(theme.colorScheme.outline),
        disabledBorder: _border(theme.colorScheme.outline),
        focusedErrorBorder: _border(_redClr),
        errorBorder: _border(_redClr),
      ),
      datePickerTheme: DatePickerThemeData(
          backgroundColor: theme.colorScheme.onPrimary,
          shadowColor: theme.colorScheme.onPrimary,
          surfaceTintColor: theme.colorScheme.onPrimary,
          shape: RoundedRectangleBorder(borderRadius: borderRoundness22),
          rangeSelectionBackgroundColor:
              theme.primaryColorLight.withOpacity(0.4)),
      colorScheme: theme.colorScheme.copyWith(
          surface: _surfaceColor,
           error: _redClr,
          secondary: _secondaryColor,
          outline: _borderColor,
          primary: _primaryColor,
          onSecondary: _whiteColor,
          onPrimary: _whiteColor,
           onError: _redClr,
          surfaceContainer: _fieldColor,
          shadow: _boxShadowColor.withOpacity(0.2)),
      appBarTheme: AppBarTheme(
        backgroundColor: _whiteColor,
        elevation: 0,
        shadowColor: Colors.transparent,
        scrolledUnderElevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: theme.colorScheme.onPrimary,
        selectedItemColor: theme.colorScheme.onBackground,
        unselectedItemColor: theme.colorScheme.onBackground,
        elevation: 0,
        selectedLabelStyle: theme.textTheme.bodySmall!.copyWith(
          fontSize: 9,
          color: theme.colorScheme.onBackground,
        ),
        selectedIconTheme: theme.iconTheme.copyWith(
          color: theme.primaryColor,
        ),
        unselectedLabelStyle: theme.textTheme.bodySmall!
            .copyWith(fontSize: 9, color: theme.colorScheme.onBackground),
        unselectedIconTheme: theme.iconTheme.copyWith(
          color: theme.primaryColor,
        ),
      ),
      focusColor: _primaryColor,
      hintColor: _hintColor,
      textTheme: textThemeTypographyStyle().apply(
          bodyColor: theme.colorScheme.onBackground,
          displayColor: theme.colorScheme.onBackground),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          textStyle: context.labelLarge!.copyWith(color: _whiteColor),
          shape: RoundedRectangleBorder(borderRadius: borderRoundness6),
          side: BorderSide(
            color: _whiteColor,
            width: 1.5,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: context.labelLarge!.copyWith(color: _whiteColor),
          shape: RoundedRectangleBorder(borderRadius: borderRoundness6),
          backgroundColor: _secondaryColor,
        ),
      ),
    );
  }

  TextTheme textThemeTypographyStyle() {
    return const TextTheme(
      ///For Large Headings
      displayLarge: TextStyle(
          fontFamily: "Poppins",
          fontSize: 35.0, fontWeight: FontWeight.w600),
      displayMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
      displaySmall: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),

      ///For Headings
      headlineLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
      headlineMedium: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
      headlineSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),

      ///For Sub Headings
      titleLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
      titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
      titleSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),

      ///For Body Text
      bodyLarge: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
      ),

      ///For label ans captions etc
      labelLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
      labelMedium: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),
      labelSmall: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500),
    );
  }

  OutlineInputBorder _border(Color color) {
    return OutlineInputBorder(
      borderRadius: borderRoundness10,
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
