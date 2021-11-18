import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermesapp/app/routes/app-pages.dart';
import 'package:hermesapp/app/routes/app-routes.dart';
import 'package:hermesapp/app/theme/app_theme.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/route_manager.dart';

void main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    title: 'App_Name',
    debugShowCheckedModeBanner: false,
    theme: appThemeData,
    initialRoute: Routes.INITIAL,
    getPages: AppPages.routes,
//    initialBinding: ,
  ));
}
