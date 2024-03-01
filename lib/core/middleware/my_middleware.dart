import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_eccommerce_user/main.dart';
import 'package:my_eccommerce_user/routes.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 0;

  @override
  RouteSettings? redirect(String? route) {
    if (sharedPreferences.getString("id") != null) {
      // redirect to homepage (inshallah)
      return const RouteSettings(name: AppRoutes.homePage);
    }

    if (sharedPreferences.getString("step") == "2") {
      return const RouteSettings(name: AppRoutes.login);
    }
    if (sharedPreferences.getString("step") == "1") {
      return const RouteSettings(name: AppRoutes.onBoarding);
    }
    return null;
  }
}
