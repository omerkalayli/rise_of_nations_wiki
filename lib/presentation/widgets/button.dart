import 'package:flutter/material.dart';
import 'package:rise_of_nations_wiki/gen/assets.gen.dart';
import 'package:rise_of_nations_wiki/global/constants.dart';

// Custom button widget with noisy background.

class Button extends StatefulWidget {
  const Button({required this.text, this.height = 48, super.key});
  final String text;
  final double height;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      onTapUp: (details) async {
        Future.delayed(Durations.medium1, () {
          setState(() {
            isClicked = false;
          });
        });
      },
      onTapDown: (details) {
        setState(() {
          isClicked = true;
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: Container(
                height: widget.height,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: buttonStrokeColor,
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: buttonOuterBorderRadius),
                child: AnimatedContainer(
                  duration: Durations.short1,
                  decoration: BoxDecoration(
                      borderRadius: buttonInnerBorderRadius,
                      gradient:
                          isClicked ? buttonGradient : clickedButtonGradient,
                      border: Border.all(width: 2, color: Colors.black)),
                )),
          ),
          Positioned(
              left: 0,
              top: 0,
              child: Assets.images.light.image(height: 32, width: 32)),
          Container(
              decoration: BoxDecoration(borderRadius: buttonOuterBorderRadius),
              child: Assets.images.buttonNoise.image(
                height: widget.height,
              )),
          Padding(
            padding: customTextPadding,
            child: Text(
              widget.text,
              textAlign: TextAlign.center,
              style: buttonTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
