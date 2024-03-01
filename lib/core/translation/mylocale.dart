import 'package:flutter/material.dart';
import 'package:my_eccommerce_user/main.dart';

class MyLocale {
  static Locale? get getCurrentLocale {
    String? locale = sharedPreferences.getString('locale');
    //  print("CHecked locale agaaaaainnnn !!!!!");
    if (locale == null) {
      return Locale("en");
    }
    return Locale(locale);
  }
}
