import 'package:flutter/material.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Accounts/accounts_main.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Docs/docs_main.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Human/human_main.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Payroll/payroll_main.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Project/project_main.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Reports/reports_main.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Sales/sales_main.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/route/route_name.dart';


Route <dynamic>? generateRoute(RouteSettings settings){
  switch (settings.name) {
    case toAccounts:
      return _getPageRoute( Accounts());
    case toSales:
      return _getPageRoute(const Sales());
    case toHuman:
      return _getPageRoute(const Human());
    case toProject:
      return _getPageRoute(const Project());
    case toPayroll:
      return _getPageRoute(const Payroll());
    case toReport:
      return _getPageRoute(const Reports());
    case toDocs:
      return _getPageRoute(const Docs());
    default :
  }
  return null;
}
PageRoute _getPageRoute(Widget child){
  return _FadeRoute(child:child);
}

class _FadeRoute extends PageRouteBuilder{
  final Widget child;
  _FadeRoute({required this.child}):
        super (
          pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              )=>
          child,
          transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
              )=> FadeTransition(opacity: animation,child: child,)
      );
}