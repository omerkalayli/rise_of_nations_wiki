import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const Color backgroundColor = Color(0xff110E48);

const LinearGradient buttonGradient = LinearGradient(colors: [
  Color(0xff0530D9),
  Color(0xff1D87F0),
  Color(0xff0B4BD8),
], stops: [
  0,
  0.5,
  1
], begin: Alignment.topCenter, end: Alignment.bottomCenter);

const LinearGradient clickedButtonGradient = LinearGradient(colors: [
  Color(0xff1B1168),
  Color(0xff22348C),
  Color(0xff1A2383),
], stops: [
  0,
  0.5,
  1
], begin: Alignment.topCenter, end: Alignment.bottomCenter);

const Color buttonStrokeColor = Color(0xffB6AE4F);
const TextStyle buttonTextStyle = TextStyle(
  fontFamily: 'TrajanPro',
  fontWeight: FontWeight.w700,
  fontSize: 16,
);

const EdgeInsets customTextPadding = EdgeInsets.only(top: 4);

final BorderRadius buttonOuterBorderRadius = BorderRadius.circular(12);
final BorderRadius buttonInnerBorderRadius = BorderRadius.circular(9);

const LinearGradient buttonSparkleGradient = LinearGradient(
    colors: [Color(0xff1B1168), Color(0xff22348C), Color(0xff1A2383)],
    stops: [0, 0.5, 1],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter);

const LinearGradient buttonSparkleClickedGradient = LinearGradient(
    colors: [Color(0xff0530D9), Color(0xff1D87F0), Color(0xff0B4BD8)],
    stops: [0, 0.5, 1],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter);

const BorderRadius buttonSparkleBorderRadius = BorderRadius.only(
    bottomLeft: Radius.circular(16),
    bottomRight: Radius.circular(16),
    topLeft: Radius.circular(8),
    topRight: Radius.circular(8));

const List<BoxShadow> buttonSparkleClickedShadow = [
  BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.25),
      blurRadius: 8,
      offset: Offset(0, -4))
];

const List<BoxShadow> buttonSparkleShadow = [
  BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.25),
      blurRadius: 12,
      offset: Offset(0, -4)),
];

const mainMenubuttonPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 8);

const List<String> mainMenuButtonTitles = [
  "nations",
  "ages",
  "basic_units",
  "unique_units",
  "buildings",
  "wonders",
  "rare_resources",
  "technologies",
  "campaigns",
  "game_concepts",
  "about"
];
