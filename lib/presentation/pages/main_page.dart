import 'package:flutter/material.dart';
import 'package:rise_of_nations_wiki/presentation/widgets/button.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Button(text: "abc")],
      ),
    );
  }
}
