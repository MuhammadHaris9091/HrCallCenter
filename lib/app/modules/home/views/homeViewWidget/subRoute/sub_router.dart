import 'package:flutter/material.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Accounts/accountsWidget/Accounting/sales_order.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Accounts/accountsWidget/Accounting/sales_quotes.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Accounts/accountsWidget/Statement/balance_sheet.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Accounts/accountsWidget/Statement/profit_and_loss.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Accounts/accountsWidget/Transaction/cash_payments.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Accounts/accountsWidget/Transaction/cash_receipts.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/subRoute/sub_route_name.dart';

Route <dynamic>? generateSubRoute(RouteSettings settings){
  switch (settings.name) {
    case toSalesQuotes:
      return _getPageRoute(const SalesQuotes());
    case toSalesOrder:
      return _getPageRoute(const SalesOrder());
    case toCashPayment:
      return _getPageRoute(const CashPayment());
    case toCashReceipt:
      return _getPageRoute(const CashReceipts());
    case toProfitLoss:
      return _getPageRoute(const ProfitLoss());
    case toBalanceSheet:
      return _getPageRoute(const BalanceSheet());

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