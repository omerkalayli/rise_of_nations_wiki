import 'package:flutter/material.dart';
import 'package:rise_of_nations_wiki/global/constants.dart';
import 'package:rise_of_nations_wiki/presentation/widgets/stroke_text.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({required this.title, this.height = 52, super.key});

  final double height;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: headerBackgroundColor,
      child: Center(
        child: Container(
          height: height - 8,
          color: headerForegroundColor,
          child: Center(
            child: StrokeText(
              strokeColor: Colors.black,
              strokeWidth: 1,
              text: title.toUpperCase(),
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "TrajanPro",
                  shadows: [
                    Shadow(
                        blurRadius: 4,
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(0, 5))
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
