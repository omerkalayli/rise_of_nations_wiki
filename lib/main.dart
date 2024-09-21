import 'package:flutter/material.dart';
import 'package:rise_of_nations_wiki/app_theme.dart';
import 'package:rise_of_nations_wiki/presentation/pages/main_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: theme, home: const MainPage());
  }
}
