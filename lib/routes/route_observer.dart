// import 'package:flutter/src/widgets/navigator.dart';
// import 'package:flutter_til_web/routes/routes.dart';
// import 'package:get/get.dart';

// class RouteObservers extends GetObserver {
//   @override
//   void didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) {
//     final sidebarController = Get.put(SidebarController());

//     if (previousRoute != null) {
//       for (var routeName in TRoutes.sideMenuItems) {
//         if (previousRoute.settings.name == routeName) {
//           sidebarController.activeItem.value = routeName;
//         }
//       }
//     }
//   }

//   @override
//   void didPush(Route<dynamic>? route, Route<dynamic>? previousRoute) {
//     final sidebarController = Get.put(SidebarController());

//     if (route != null) {
//       for (var routeName in TRoutes.sideMenuItems) {
//         if (route.settings.name == routeName) {
//           sidebarController.activeItem.value = routeName;
//         }
//       }
//     }
//   }

// }
