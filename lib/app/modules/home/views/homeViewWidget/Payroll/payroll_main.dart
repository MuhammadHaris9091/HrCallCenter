import 'package:flutter/material.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Payroll/payroll_sidebar.dart';

class Payroll extends StatefulWidget {
  const Payroll({Key? key}) : super(key: key);

  @override
  _PayrollState createState() => _PayrollState();
}

class _PayrollState extends State<Payroll> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const PayrollSidebar(),
        Expanded(
            flex: 17,
            child: Container()),

      ],
    );
  }
}
