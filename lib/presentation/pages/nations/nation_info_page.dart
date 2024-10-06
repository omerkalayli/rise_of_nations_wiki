import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rise_of_nations_wiki/presentation/entities/nation.dart';
import 'package:rise_of_nations_wiki/presentation/widgets/custom_button.dart';

@RoutePage()
class NationInfoPage extends StatelessWidget {
  const NationInfoPage({required this.nation, super.key});

  final Nation nation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  foregroundDecoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    const Color(0xff000000).withOpacity(0.4),
                    const Color(0xff000000).withOpacity(0.8),
                    const Color(0xff110E49),
                  ], stops: const [
                    0,
                    0.5,
                    1
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                  child: nation.flagImage
                      .image(width: double.infinity, fit: BoxFit.fitWidth)),
              Positioned(
                bottom: 48,
                child: Text(
                  nation.name.tr(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      fontFamily: "TrajanPro"),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
                style: TextStyle(fontSize: 18),
                "They have the Power of Sacrifice, based on the central role of warfare in Aztec society, where it was frequently carried out, not to to outright kill the enemy, but to acquire captives to ritually sacrifice; a vital aspect of maintaining the world's balance in Aztec cosmogony, and the greatest opportunity for men of all origins under Aztec rule to increase their social standing "),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: CustomButton(text: "unique_powers".tr(), onClick: () {}),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: CustomButton(text: "unique_units".tr(), onClick: () {}),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: CustomButton(text: "leaders".tr(), onClick: () {}),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: CustomButton(text: "cities".tr(), onClick: () {}),
          ),
          Spacer()
        ],
      ),
    );
    ;
  }
}
