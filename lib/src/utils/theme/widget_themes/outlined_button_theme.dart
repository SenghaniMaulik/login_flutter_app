import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';

class TOutlinedButtonTheme{
  TOutlinedButtonTheme._();// to avoid creating instances

/*Light theme*/
static final lightOutlinedButtonTheme= OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(),
    foregroundColor: tSecondaryColor,
    side: BorderSide(color: tSecondaryColor),
    padding: EdgeInsets.symmetric(vertical: tButtonHeight)
  )
);
/*Dark theme*/
static final darkOutlinedButtonTheme= OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: tWhiteColor,
        side: BorderSide(color: tWhiteColor),
        padding: EdgeInsets.symmetric(vertical: tButtonHeight)
    )
);
}