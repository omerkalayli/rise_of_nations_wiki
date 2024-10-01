import 'package:flutter/material.dart';
import 'package:rise_of_nations_wiki/global/constants.dart';

class StrokeText extends StatelessWidget {
  const StrokeText(
      {required this.strokeColor,
      required this.text,
      required this.style,
      required this.strokeWidth,
      super.key});

  final String text;
  final TextStyle style;
  final Color strokeColor;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: customTextPadding,
      child: Stack(
        children: <Widget>[
          Text(text,
              style: style.copyWith(
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = strokeWidth
                  ..color = strokeColor,
              )),
          Text(
            text,
            style: style.copyWith(shadows: List.empty()),
          ),
        ],
      ),
    );
  }
}
