import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rise_of_nations_wiki/global/constants.dart';

ThemeData getTheme(BuildContext context) => ThemeData().copyWith(
      scaffoldBackgroundColor: backgroundColor,
      textTheme: GoogleFonts.ebGaramondTextTheme().copyWith(
          bodyMedium: GoogleFonts.ebGaramond(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20)),
    );
