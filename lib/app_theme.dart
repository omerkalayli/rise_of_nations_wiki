import 'package:flutter/material.dart';
import 'package:rise_of_nations_wiki/global/constants.dart';

ThemeData get theme => ThemeData(
    scaffoldBackgroundColor: backgroundColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))))));
