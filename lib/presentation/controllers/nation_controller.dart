import 'package:rise_of_nations_wiki/gen/assets.gen.dart';
import 'package:rise_of_nations_wiki/presentation/entities/nation.dart';
import 'package:rise_of_nations_wiki/presentation/widgets/custom_dropdown_menu.dart';

class NationController {
  final List<Nation> nations = [
    Nation(
        name: "americans",
        flagImage: Assets.images.nationFlags.americansFlag,
        strategy: [StrategyType.economic, StrategyType.offensive]),
    Nation(
        name: "aztecs",
        flagImage: Assets.images.nationFlags.aztecsFlag,
        strategy: [StrategyType.offensive]),
    Nation(
        name: "bantu",
        flagImage: Assets.images.nationFlags.bantuFlag,
        strategy: [StrategyType.offensive]),
    Nation(
        name: "british",
        flagImage: Assets.images.nationFlags.britishFlag,
        strategy: [StrategyType.economic]),
    Nation(
        name: "chinese",
        flagImage: Assets.images.nationFlags.chineseFlag,
        strategy: [StrategyType.defensive, StrategyType.economic]),
    Nation(
        name: "dutch",
        flagImage: Assets.images.nationFlags.dutchFlag,
        strategy: [StrategyType.economic]),
    Nation(
        name: "egyptians",
        flagImage: Assets.images.nationFlags.egyptiansFlag,
        strategy: [StrategyType.economic]),
    Nation(
        name: "french",
        flagImage: Assets.images.nationFlags.frenchFlag,
        strategy: [StrategyType.offensive]),
    Nation(
        name: "germans",
        flagImage: Assets.images.nationFlags.germansFlag,
        strategy: [StrategyType.offensive, StrategyType.economic]),
    Nation(
        name: "greeks",
        flagImage: Assets.images.nationFlags.greeksFlag,
        strategy: [StrategyType.economic]),
    Nation(
        name: "inca",
        flagImage: Assets.images.nationFlags.incaFlag,
        strategy: [StrategyType.economic]),
    Nation(
        name: "indians",
        flagImage: Assets.images.nationFlags.indiansFlag,
        strategy: [StrategyType.defensive, StrategyType.economic]),
    Nation(
        name: "iroquois",
        flagImage: Assets.images.nationFlags.iroquoisFlag,
        strategy: [StrategyType.offensive, StrategyType.defensive]),
    Nation(
        name: "japanese",
        flagImage: Assets.images.nationFlags.japaneseFlag,
        strategy: [StrategyType.offensive]),
    Nation(
        name: "koreans",
        flagImage: Assets.images.nationFlags.koreansFlag,
        strategy: [StrategyType.defensive, StrategyType.economic]),
    Nation(
        name: "lakota",
        flagImage: Assets.images.nationFlags.lakotaFlag,
        strategy: [StrategyType.offensive]),
    Nation(
        name: "mongols",
        flagImage: Assets.images.nationFlags.mongolsFlag,
        strategy: [StrategyType.defensive]),
    Nation(
        name: "nubians",
        flagImage: Assets.images.nationFlags.nubiansFlag,
        strategy: [StrategyType.economic]),
    Nation(
        name: "persians",
        flagImage: Assets.images.nationFlags.persiansFlag,
        strategy: [StrategyType.defensive, StrategyType.economic]),
    Nation(
        name: "romans",
        flagImage: Assets.images.nationFlags.romansFlag,
        strategy: [StrategyType.offensive]),
    Nation(
        name: "russians",
        flagImage: Assets.images.nationFlags.russiansFlag,
        strategy: [StrategyType.defensive]),
    Nation(
        name: "spanish",
        flagImage: Assets.images.nationFlags.spanishFlag,
        strategy: [StrategyType.economic]),
    Nation(
        name: "turks",
        flagImage: Assets.images.nationFlags.turksFlag,
        strategy: [StrategyType.offensive]),
  ];
}
