import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/subServices/sub_locator.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/services/locator.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  setupSubLocator();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
