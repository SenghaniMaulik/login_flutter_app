import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';

class TElevatedButtonTheme{
  TElevatedButtonTheme._();// to avoid creating instances

/*Light theme*/
static final lightElevationButtonTheme= ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0,
    shape: RoundedRectangleBorder(),
    foregroundColor: tWhiteColor,
    backgroundColor: tSecondaryColor,
    side: BorderSide(color: tSecondaryColor),
    padding: EdgeInsets.symmetric(vertical: tButtonHeight)
  )
);
static final darkElevationButtonTheme= ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(),
        foregroundColor: tSecondaryColor,
        backgroundColor: tWhiteColor,
        side: BorderSide(color: tSecondaryColor),
        padding: EdgeInsets.symmetric(vertical: tButtonHeight)
    )
);
}