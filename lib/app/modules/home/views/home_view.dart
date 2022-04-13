import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/sidebar.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/route/route_name.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/route/router.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/services/locator.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/services/navigation_service.dart';
import '../controllers/home_controller.dart';
l
class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          (MediaQuery.of(context).size.height>=665)?
          const Sidebar():const SingleChildScrollView(
            child: Sidebar(),
          ),
          Expanded(
              child: Navigator(
                key: locator<NavigationServices>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: toAccounts,
              )
          ),

        ],
      ),
    );
  }
}