import 'package:flutter/material.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Reports/reports_sidebar.dart';
class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  _ReportsState createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ReportSidebar(),
        Expanded(
            flex: 17,
            child: Container()),

      ],
    );
  }
}
