import 'package:rise_of_nations_wiki/gen/assets.gen.dart';
import 'package:rise_of_nations_wiki/presentation/widgets/custom_dropdown_menu.dart';

class Nation {
  String name;
  AssetGenImage flagImage;
  List<StrategyType> strategy;

  Nation({required this.name, required this.flagImage, required this.strategy});
}
