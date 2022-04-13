import 'package:flutter/material.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Human/human_sidebar.dart';

class Human extends StatefulWidget {
  const Human({Key? key}) : super(key: key);

  @override
  _HumanState createState() => _HumanState();
}

class _HumanState extends State<Human> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const HumanSidebar(),
        Expanded(
            flex: 17,
            child: Container()),
      ],
    );
  }
}
