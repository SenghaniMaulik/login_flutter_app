import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_flutter_app/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:login_flutter_app/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:login_flutter_app/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevationButtonTheme
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    appBarTheme: AppBarTheme(),
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevationButtonTheme
  );
}
