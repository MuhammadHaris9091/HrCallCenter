import 'package:flutter/cupertino.dart';

class SubNavigationServices {
  final GlobalKey<NavigatorState> subNavigatorKey = GlobalKey<NavigatorState>();

  Future <dynamic> subNavigateTo(String routeName) {
    return subNavigatorKey.currentState!.pushNamed(routeName);
  }

  void goBack() => subNavigatorKey.currentState!.pop();

}