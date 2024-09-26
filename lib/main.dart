import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rise_of_nations_wiki/app_theme.dart';
import 'package:rise_of_nations_wiki/presentation/pages/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      supportedLocales: const [Locale('tr', 'TR'), Locale('en' 'US')],
      path: 'assets/translations',
      fallbackLocale: const Locale('tr', 'TR'),
      child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        theme: getTheme(context),
        home: const MainPage());
  }
}
