import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rise_of_nations_wiki/gen/assets.gen.dart';
import 'package:rise_of_nations_wiki/global/constants.dart';
import 'package:rise_of_nations_wiki/presentation/widgets/custom_dropdown_item.dart';

class CustomDropdownMenu extends StatefulWidget {
  const CustomDropdownMenu(
      {required this.onStrategyChanged, this.height = 32, super.key});

  final double height;
  final Function(StrategyType) onStrategyChanged;

  @override
  State<CustomDropdownMenu> createState() => _CustomDropdownMenuState();
}

class _CustomDropdownMenuState extends State<CustomDropdownMenu> {
  final GlobalKey dropdownKey = GlobalKey();

  StrategyType strategy = StrategyType.all;

  final OverlayPortalController overlayPortalController =
      OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    bool isOpen = overlayPortalController.isShowing;

    return Column(
      children: [
        Row(
          children: [
            CustomDropdownItem(
              key: dropdownKey,
              height: widget.height,
              text: _getDropdownText(strategy).tr(),
              selectedStrategy: strategy,
              strategy: strategy,
              isPermanent: true,
              onClick: () {},
            ),
            OverlayPortal(
                controller: overlayPortalController,
                overlayChildBuilder: (context) {
                  RenderBox box = dropdownKey.currentContext?.findRenderObject()
                      as RenderBox;
                  Offset position = box.localToGlobal(Offset.zero);

                  return Positioned(
                    left: position.dx,
                    top: position.dy + widget.height,
                    child: Column(
                      children: [
                        CustomDropdownItem(
                          selectedStrategy: strategy,
                          strategy: StrategyType.all,
                          text: "all".tr(),
                          height: widget.height,
                          onClick: () {
                            setState(() {
                              strategy = StrategyType.all;
                              overlayPortalController.hide();
                              widget.onStrategyChanged(StrategyType.all);
                            });
                          },
                        ),
                        CustomDropdownItem(
                            selectedStrategy: strategy,
                            strategy: StrategyType.defensive,
                            text: "defensive".tr(),
                            height: widget.height,
                            onClick: () {
                              setState(() {
                                strategy = StrategyType.defensive;
                                overlayPortalController.hide();
                                widget
                                    .onStrategyChanged(StrategyType.defensive);
                              });
                            }),
                        CustomDropdownItem(
                            selectedStrategy: strategy,
                            strategy: StrategyType.offensive,
                            text: "offensive".tr(),
                            height: widget.height,
                            onClick: () {
                              setState(() {
                                strategy = StrategyType.offensive;
                                overlayPortalController.hide();
                                widget
                                    .onStrategyChanged(StrategyType.offensive);
                              });
                            }),
                        CustomDropdownItem(
                            selectedStrategy: strategy,
                            strategy: StrategyType.economic,
                            text: "economic".tr(),
                            height: widget.height,
                            onClick: () {
                              setState(() {
                                strategy = StrategyType.economic;
                                overlayPortalController.hide();
                                widget.onStrategyChanged(StrategyType.economic);
                              });
                            }),
                      ],
                    ),
                  );
                }),
            InkWell(
              overlayColor: const WidgetStatePropertyAll(Colors.transparent),
              onTap: () {
                setState(() {
                  if (isOpen) {
                    overlayPortalController.hide();
                  } else {
                    overlayPortalController.show();
                  }
                });
              },
              child: Container(
                width: widget.height,
                height: widget.height,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: dropdownOuterBorderColor, width: 2),
                    color: Colors.transparent),
                child: Container(
                  color: Colors.transparent,
                  margin: const EdgeInsets.all(2),
                  padding: const EdgeInsets.all(4),
                  child: Center(
                    child: isOpen
                        ? Assets.images.dropdownClose.image()
                        : Assets.images.dropdownOpen.image(),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  String _getDropdownText(StrategyType strategy) {
    return switch (strategy) {
      StrategyType.all => "all",
      StrategyType.defensive => "defensive",
      StrategyType.offensive => "offensive",
      StrategyType.economic => "economic"
    };
  }
}

enum StrategyType { all, defensive, offensive, economic }
