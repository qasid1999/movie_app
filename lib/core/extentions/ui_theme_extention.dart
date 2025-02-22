import '../helpers/imports_helper.dart';

extension UIThemeExtention on BuildContext {
  TextStyle? get displayLarge => Theme.of(this).textTheme.displayLarge;

  TextStyle? get displayMedium => Theme.of(this).textTheme.displayMedium;

  TextStyle? get displaySmall => Theme.of(this).textTheme.displaySmall;

  TextStyle? get headlineLarge => Theme.of(this).textTheme.headlineLarge;

  TextStyle? get headlineMedium => Theme.of(this).textTheme.headlineMedium;

  TextStyle? get headlineSmall => Theme.of(this).textTheme.headlineSmall;

  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;

  TextStyle? get readMoreTitle => Theme.of(this)
      .textTheme
      .titleSmall
      ?.copyWith(fontWeight: FontWeight.bold, color: primaryColor);

  TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;

  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;

  TextStyle? get labelLarge => Theme.of(this).textTheme.labelLarge;

  TextStyle? get labelMedium => Theme.of(this).textTheme.labelMedium;

  TextStyle? get labelSmall => Theme.of(this).textTheme.labelSmall;

  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;

  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;

  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;

  TextStyle? get inActiveBody => Theme.of(this)
      .textTheme
      .bodyMedium
      ?.copyWith(fontWeight: FontWeight.bold);

  TextStyle? get inActiveSmallBody =>
      Theme.of(this).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold);

  TextStyle? get hintStyle => Theme.of(this).inputDecorationTheme.hintStyle;

  TextStyle? get labelStyle => Theme.of(this).inputDecorationTheme.labelStyle;

  //Used For Text Colors
  Color get onPrimaryColor => Theme.of(this).colorScheme.onPrimary;

  Color get onSecondaryColor => Theme.of(this).colorScheme.onSecondary;

  Color get onBackgroundColor => Theme.of(this).colorScheme.onBackground;

  //Colors
  Color get onErrorColor => Theme.of(this).colorScheme.onError;

  Color get borderColor => Theme.of(this).colorScheme.outline;

  Color get surfaceColor => Theme.of(this).colorScheme.surface;

  Color get onSurfaceColor => Theme.of(this).colorScheme.onSurface;

  Color get hintColor => Theme.of(this).hintColor;

  Color get darkGrey => AppTheme().darkGrey;

  Color get skyBlue => AppTheme().skyBlue;

  Color get darkYellow => AppTheme().darkYellow;

  Color get darkBlue => AppTheme().darkBlue;

  Color get surfaceContainerColor =>
      Theme.of(this).colorScheme.surfaceContainer;

  //Background Colors
  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;

  Color get shadowColor => Theme.of(this).colorScheme.shadow;

  //Primary and Secondary Color
  Color get secondaryColor => Theme.of(this).colorScheme.secondary;

  Color get primaryColor => Theme.of(this).colorScheme.primary;

  Color get primaryColorLight => Theme.of(this).primaryColorLight;

  Color get errorColor => Theme.of(this).colorScheme.error;

  //Button Themes
  ElevatedButtonThemeData get elevatedButtonThemeData =>
      Theme.of(this).elevatedButtonTheme;

  OutlinedButtonThemeData get outlinedButtonThemeData =>
      Theme.of(this).outlinedButtonTheme;

  BottomNavigationBarThemeData get bottomNavigationBarThemeData =>
      Theme.of(this).bottomNavigationBarTheme;
}
