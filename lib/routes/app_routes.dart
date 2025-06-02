import 'package:flutter_til_web/app.dart';
import 'package:flutter_til_web/routes/routes.dart';
import 'package:flutter_til_web/routes/routes_middleware.dart';
import 'package:get/get.dart';

class TAppRoute {
  static final List<GetPage> pages = [
        GetPage(
        name: TRoutes.responsiveDesignTutorialScreen,
        page: () => const ResponsiveDesignScreen(),
        middlewares: [TRouteMiddleware()]),
    // GetPage(
    //     name: TRoutes.firstScreen,
    //     page: () => const FirstScreen(),
    //     middlewares: [TRouteMiddleware()]),
    GetPage(
        name: TRoutes.secondScreen,
        page: () => const SecondScreen(),
        middlewares: [TRouteMiddleware()]),
    GetPage(
        name: TRoutes.secondScreenWithUID, page: () => const SecondScreen()),
  ];
}
