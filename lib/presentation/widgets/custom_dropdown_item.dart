import 'package:flutter/material.dart';
import 'package:rise_of_nations_wiki/gen/assets.gen.dart';
import 'package:rise_of_nations_wiki/global/constants.dart';
import 'package:rise_of_nations_wiki/presentation/widgets/custom_dropdown_menu.dart';

class CustomDropdownItem extends StatelessWidget {
  const CustomDropdownItem(
      {required this.strategy,
      required this.selectedStrategy,
      required this.text,
      required this.height,
      required this.onClick,
      this.isPermanent,
      super.key});

  final StrategyType strategy;
  final StrategyType selectedStrategy;
  final double height;
  final String text;
  final Function onClick;
  final bool? isPermanent;

  @override
  Widget build(BuildContext context) {
    if (strategy == selectedStrategy && ((isPermanent ?? false) == false)) {
      return Container();
    }
    return InkWell(
      onTap: () => onClick.call(),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: height + 2,
              color: dropdownOuterBorderColor,
              child: Container(
                margin: const EdgeInsets.all(2),
                height: height,
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2, color: dropdownInnerBorderColor),
                    color: Colors.white),
              ),
            ),
          ),
          Assets.images.dropdownNoise.image(height: height),
          Text(
            text,
            style: const TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
