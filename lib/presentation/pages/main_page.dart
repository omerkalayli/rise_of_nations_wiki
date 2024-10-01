import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rise_of_nations_wiki/gen/assets.gen.dart';
import 'package:rise_of_nations_wiki/global/constants.dart';
import 'package:rise_of_nations_wiki/presentation/widgets/custom_button.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _getMainWidgets()),
      ),
    );
  }

  List<Widget> _getMainWidgets() {
    List<Widget> mainMenuWidgets = [
      const Gap(16),
      Padding(
        padding: const EdgeInsets.all(40.0),
        child: Assets.images.ronLogo.image(),
      ),
    ];
    mainMenuWidgets.add(Column(
        children: List.generate(
      mainMenuButtonTitles.length,
      (index) {
        return Padding(
          padding: mainMenubuttonPadding,
          child: CustomButton(
            text: mainMenuButtonTitles[index].tr(),
            onClick: () {},
          ),
        );
      },
    )));
    return mainMenuWidgets;
  }
}
