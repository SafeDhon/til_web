import 'package:flutter/material.dart';
import 'package:flutter_til_web/routes/routes.dart';
import 'package:get/get.dart';

class TRouteMiddleware extends GetMiddleware {
  @override
 RouteSettings? redirect(String? route) {
  print('......................................... Middleware Called .........................................');
  final isAuthenticated = true;
  return isAuthenticated ? null : const RouteSettings(name: TRoutes.responsiveDesignTutorialScreen);
 }
}