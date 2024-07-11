import 'package:auto_route/auto_route.dart';
import 'package:flutter_starter/features/dashboard/dashboard_page.dart';
import 'package:flutter_starter/features/splash/splash_page.dart';

part 'app_router.gr.dart';
part 'app_routes.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: AppRoutes.splash,
          page: SplashRoute.page,
        ),
        AutoRoute(
          path: AppRoutes.dashboard,
          page: DashboardRoute.page,
        ),
      ];
}
