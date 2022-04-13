import 'package:flutter/material.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Sales/sales_sidebar.dart';

class Sales extends StatefulWidget {
  const Sales({Key? key}) : super(key: key);

  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SalesSidebar(),
        Expanded(
            flex: 17,
            child: Container()),

      ],
    );
  }
}
