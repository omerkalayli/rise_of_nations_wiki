import 'package:auto_route/auto_route.dart';
import 'package:rise_of_nations_wiki/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page),
        AutoRoute(page: NationsRoute.page, initial: true),
        AutoRoute(page: NationInfoRoute.page),
      ];
}
