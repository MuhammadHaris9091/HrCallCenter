import 'package:flutter/material.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Accounts/accounts_sidebar.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/subRoute/sub_route_name.dart';
import '../subRoute/sub_router.dart';
import '../subServices/sub_locator.dart';
import '../subServices/sub_navigation_services.dart';

class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        const AccountsSidebar(),
        Expanded(
          flex: 17,
            child: Navigator(
              key: locator<SubNavigationServices>().subNavigatorKey,
              onGenerateRoute: generateSubRoute,
              initialRoute: toSalesQuotes,
            )),

      ],
    );
  }
}
