import 'package:flutter/material.dart';

class PayrollSidebar extends StatefulWidget {
  const PayrollSidebar({Key? key}) : super(key: key);

  @override
  _PayrollSidebarState createState() => _PayrollSidebarState();
}

class _PayrollSidebarState extends State<PayrollSidebar> {
  int _selectedIndex = 0;
  List<int> index = [0, 1,];

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
            "Payroll",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          ),
          const Padding(padding: EdgeInsets.all(15)),
          InkWell(
              onTap: () {
                _onSelected(0);
              },
              child: payRollListTiles(
                  context,
                  'Payroll',
                  _selectedIndex == 0
                      ? Colors.indigoAccent
                      : Colors.transparent)),
          //_selectedIndex==0?const AccountingAttributeWidget():Container(),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: () {
                _onSelected(1);
              },
              child: payRollListTiles(
                  context,
                  'Reports',
                  _selectedIndex == 1
                      ? Colors.indigoAccent
                      : Colors.transparent)),
        ],
      ),
    );
  }

  Widget payRollListTiles(context, title, color) {
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
