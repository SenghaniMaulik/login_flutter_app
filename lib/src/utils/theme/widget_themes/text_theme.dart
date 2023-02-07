import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_flutter_app/src/constants/colors.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(color: tDarkColor,fontSize: 28,fontWeight: FontWeight.bold),
    headline2: GoogleFonts.montserrat(color: tDarkColor,fontSize: 24,fontWeight: FontWeight.w700),
    headline3: GoogleFonts.poppins(color: tDarkColor,fontSize: 24,fontWeight: FontWeight.w700),
    headline4: GoogleFonts.poppins(color: tDarkColor,fontSize: 16,fontWeight: FontWeight.w600),
    headline6: GoogleFonts.poppins(color: tDarkColor,fontSize: 14,fontWeight: FontWeight.w600),
    bodyText1: GoogleFonts.poppins(color: tDarkColor, fontSize: 14,fontWeight: FontWeight.normal),
    bodyText2: GoogleFonts.poppins(color: tDarkColor, fontSize: 14,fontWeight: FontWeight.normal),
  );

  static TextTheme darkTextTheme = TextTheme(
  headline1: GoogleFonts.montserrat(color: tWhiteColor,fontSize: 28,fontWeight: FontWeight.bold),
  headline2: GoogleFonts.montserrat(color: tWhiteColor,fontSize: 24,fontWeight: FontWeight.w700),
  headline3: GoogleFonts.poppins(color: tWhiteColor,fontSize: 24,fontWeight: FontWeight.w700),
  headline4: GoogleFonts.poppins(color: tWhiteColor,fontSize: 16,fontWeight: FontWeight.w600),
  headline6: GoogleFonts.poppins(color: tWhiteColor,fontSize: 14,fontWeight: FontWeight.w600),
  bodyText1: GoogleFonts.poppins(color: tWhiteColor, fontSize: 14,fontWeight: FontWeight.normal),
  bodyText2: GoogleFonts.poppins(color: tWhiteColor, fontSize: 14,fontWeight: FontWeight.normal),
  );
}
