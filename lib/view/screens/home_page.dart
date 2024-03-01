import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_eccommerce_user/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
            onTap: () async {
              await sharedPreferences.clear();
            },
            child: Text("HomePage".tr)),
        centerTitle: true,
      ),
    );
  }
}
