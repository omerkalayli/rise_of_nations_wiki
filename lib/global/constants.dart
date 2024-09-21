import 'dart:ui';

import 'package:flutter/material.dart';

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
