import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:rise_of_nations_wiki/gen/assets.gen.dart';
import 'package:rise_of_nations_wiki/global/constants.dart';
import 'package:rise_of_nations_wiki/global/utils.dart';

// Custom button widget with noisy background.

class CustomButton extends StatefulWidget {
  const CustomButton(
      {required this.text, required this.onClick, this.height = 48, super.key});
  final String text;
  final double height;
  final Function onClick;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isClicked = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      onTapUp: (details) async {
        await Future.delayed(Durations.medium1, () {
          setState(() {
            isClicked = false;
          });
        });
      },
      onTapDown: (details) async {
        await playClickSound();

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
