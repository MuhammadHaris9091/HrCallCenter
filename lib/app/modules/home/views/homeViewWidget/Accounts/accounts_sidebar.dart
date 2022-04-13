import 'package:flutter/material.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Accounts/accountsWidget/accounting_attribute_widget.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Accounts/accountsWidget/statement_attribute_widget.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Accounts/accountsWidget/transaction_attribute_widget.dart';

class AccountsSidebar extends StatefulWidget {
  const AccountsSidebar({Key? key}) : super(key: key);

  @override
  State<AccountsSidebar> createState() => _AccountsSidebarState();
}

class _AccountsSidebarState extends State<AccountsSidebar> {
  int _selectedIndex = 0;
  List<int> index = [
    0,
    1,
    2,
  ];

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Accounts",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          ),
          const Padding(padding: EdgeInsets.all(15)),
          InkWell(
              onTap: () {
                _onSelected(0);
              },
              child: accountsListTiles(
                  context,
                  'Accounting',
                  _selectedIndex == 0
                      ? Colors.indigoAccent
                      : Colors.transparent)),
          _selectedIndex == 0 ? const AccountingAttributeWidget() : Container(),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: () {
                _onSelected(1);
              },
              child: accountsListTiles(
                  context,
                  'Transactions',
                  _selectedIndex == 1
                      ? Colors.indigoAccent
                      : Colors.transparent)),
          _selectedIndex == 1 ? const TransactionAttributeWidget() : Container(),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: () {
                _onSelected(2);
              },
              child: accountsListTiles(
                  context,
                  'Statements',
                  _selectedIndex == 2
                      ? Colors.indigoAccent
                      : Colors.transparent)),
          _selectedIndex == 2 ? const StatementAttributeWidget() : Container(),
        ],
      ),
    );
  }

  Widget accountsListTiles(context, title, color) {
    return Row(
      children: [
        Text(
          title.toUpperCase(),
          style: const TextStyle(fontSize: 15),
        ),
        const Spacer(),
        Container(
          color: color,
          width: 2,
          height: 20,
        ),
      ],
    );
  }
}
