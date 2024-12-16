import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanoigo/presentation/pages/app/app_pages.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class AppMain extends StatelessWidget {
  const AppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        // fontFamily: 'WorkSans',
      ),
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.key,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
