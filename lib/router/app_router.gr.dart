// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i6;
import 'package:rise_of_nations_wiki/presentation/entities/nation.dart' as _i5;
import 'package:rise_of_nations_wiki/presentation/pages/main_page.dart' as _i1;
import 'package:rise_of_nations_wiki/presentation/pages/nations/nation_info_page.dart'
    as _i2;
import 'package:rise_of_nations_wiki/presentation/pages/nations/nations_page.dart'
    as _i3;

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i4.PageRouteInfo<void> {
  const MainRoute({List<_i4.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.MainPage();
    },
  );
}

/// generated route for
/// [_i2.NationInfoPage]
class NationInfoRoute extends _i4.PageRouteInfo<NationInfoRouteArgs> {
  NationInfoRoute({
    required _i5.Nation nation,
    _i6.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          NationInfoRoute.name,
          args: NationInfoRouteArgs(
            nation: nation,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'NationInfoRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NationInfoRouteArgs>();
      return _i2.NationInfoPage(
        nation: args.nation,
        key: args.key,
      );
    },
  );
}

class NationInfoRouteArgs {
  const NationInfoRouteArgs({
    required this.nation,
    this.key,
  });

  final _i5.Nation nation;

  final _i6.Key? key;

  @override
  String toString() {
    return 'NationInfoRouteArgs{nation: $nation, key: $key}';
  }
}

/// generated route for
/// [_i3.NationsPage]
class NationsRoute extends _i4.PageRouteInfo<void> {
  const NationsRoute({List<_i4.PageRouteInfo>? children})
      : super(
          NationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NationsRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.NationsPage();
    },
  );
}
