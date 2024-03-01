import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_eccommerce_user/core/colors.dart';
import 'package:my_eccommerce_user/core/translation/mylocale.dart';
import 'package:my_eccommerce_user/core/translation/translation.dart';
import 'package:my_eccommerce_user/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Cairo",
        colorScheme: const ColorScheme.light(primary: AppColors.thirdColor10),
        scaffoldBackgroundColor: AppColors.mainColor60,
        textTheme: const TextTheme(
          // Texts uses it
          bodyMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.thirdColor10,
          ),
          // TextForms uses it
          bodyLarge: TextStyle(fontSize: 15),
        ),
        useMaterial3: true,
      ),
      translations: MyTransLations(),
      locale: MyLocale.getCurrentLocale,
      // home: const VerifyCode(),
      getPages: pages,
    );
  }
}
