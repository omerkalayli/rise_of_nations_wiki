import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rise_of_nations_wiki/global/constants.dart';
import 'package:rise_of_nations_wiki/global/utils.dart';
import 'package:rise_of_nations_wiki/presentation/controllers/nation_controller.dart';
import 'package:rise_of_nations_wiki/presentation/entities/nation.dart';
import 'package:rise_of_nations_wiki/presentation/widgets/custom_dropdown_menu.dart';
import 'package:rise_of_nations_wiki/presentation/widgets/custom_header.dart';
import 'package:rise_of_nations_wiki/router/app_router.gr.dart';

@RoutePage()
class NationsPage extends StatefulWidget {
  const NationsPage({super.key});

  @override
  State<NationsPage> createState() => _NationsPageState();
}

class _NationsPageState extends State<NationsPage> {
  final TextStyle textStyle = const TextStyle(fontSize: 20);
  final NationController nationController = NationController();
  final StrategyType strategy = StrategyType.all;
  late List<Nation> filteredNations;

  void onStrategyChanged(StrategyType strategy) {
    setState(() {
      strategy = strategy;
      if (strategy == StrategyType.all) {
        filteredNations = nationController.nations;
      } else {
        filteredNations = nationController.nations
            .where((nation) => nation.strategy.contains(strategy))
            .toList();
      }
    });
  }

  @override
  void initState() {
    filteredNations = nationController.nations;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: false,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: backgroundColor,
      ),
      body: Column(
        children: [
          CustomHeader(title: "nations".tr()),
          const Gap(16),
          Text(
            "nations_title".tr(),
            style: textStyle,
          ),
          const Gap(32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${"strategy".tr()}:",
                style: textStyle,
              ),
              const Gap(8),
              CustomDropdownMenu(
                onStrategyChanged: onStrategyChanged,
              ),
            ],
          ),
          const Gap(32),
          Expanded(
            child: ListView.builder(
                itemCount: filteredNations.length ~/ 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                        bottom: (filteredNations.length ~/ 2 == index + 1)
                            ? 16
                            : 0),
                    child: Row(
                      children: [
                        InkWell(
                          overlayColor:
                              const WidgetStatePropertyAll(Colors.transparent),
                          onTap: () async {
                            await playNavigateForwardSound();
                            await context.router.push(NationInfoRoute(
                                nation: filteredNations[index * 2]));
                          },
                          child: Stack(
                            children: [
                              Container(
                                  foregroundDecoration: BoxDecoration(
                                      gradient: LinearGradient(
                                    colors: [
                                      Colors.black.withOpacity(0),
                                      backgroundColor
                                    ],
                                  )),
                                  child: filteredNations[index * 2]
                                      .flagImage
                                      .image(
                                          width: width / 2,
                                          height: 116,
                                          fit: BoxFit.fitWidth)),
                              Positioned(
                                  right: 20,
                                  bottom: 10,
                                  child: Text(
                                    filteredNations[index * 2].name.tr(),
                                    style: const TextStyle(
                                        fontFamily: "TrajanPro",
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ),
                        ),
                        InkWell(
                          overlayColor:
                              const WidgetStatePropertyAll(Colors.transparent),
                          onTap: () async {
                            await playNavigateForwardSound();
                            await context.router.push(NationInfoRoute(
                                nation: filteredNations[index * 2 + 1]));
                          },
                          child: Stack(
                            children: [
                              Container(
                                  foregroundDecoration: BoxDecoration(
                                      gradient: LinearGradient(
                                    colors: [
                                      backgroundColor,
                                      Colors.black.withOpacity(0),
                                    ],
                                  )),
                                  child: filteredNations[index * 2 + 1]
                                      .flagImage
                                      .image(
                                          width: width / 2,
                                          height: 116,
                                          fit: BoxFit.fitWidth)),
                              Positioned(
                                  left: 20,
                                  bottom: 10,
                                  child: AutoSizeText(
                                    filteredNations[index * 2 + 1].name.tr(),
                                    style: const TextStyle(
                                        fontFamily: "TrajanPro",
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
