import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rise_of_nations_wiki/presentation/controllers/nation_controller.dart';
import 'package:rise_of_nations_wiki/presentation/entities/nation.dart';

@RoutePage()
class NationInfoPage extends StatelessWidget {
  NationInfoPage({required this.nation, super.key});

  final Nation nation;
  final NationController nationController = NationController();

  @override
  Widget build(BuildContext context) {
    return nation.flagImage.image();
  }
}
