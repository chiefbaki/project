import 'package:auto_route/auto_route.dart';
import 'package:flutter_application_1/feature/presentation/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          initial: true,
        ),AutoRoute(
          page: RegRoute.page,
        ),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: GuidesRoute.page)
      ];
}
