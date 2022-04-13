import 'package:flutter/material.dart';

class HumanSidebar extends StatefulWidget {
  const HumanSidebar({Key? key}) : super(key: key);

  @override
  _HumanSidebarState createState() => _HumanSidebarState();
}

class _HumanSidebarState extends State<HumanSidebar> {
  int _selectedIndex = 0;
  List<int> index = [0, 1, 2, 3, 4, 5];

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
            "Humans",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          ),
          const Padding(padding: EdgeInsets.all(15)),
          InkWell(
              onTap: () {
                _onSelected(0);
              },
              child: humanListTiles(
                  context,
                  'Company',
                  _selectedIndex == 0
                      ? Colors.indigoAccent
                      : Colors.transparent)),
          //_selectedIndex==0?const AccountingAttributeWidget():Container(),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: () {
                _onSelected(1);
              },
              child: humanListTiles(
                  context,
                  'Employee',
                  _selectedIndex == 1
                      ? Colors.indigoAccent
                      : Colors.transparent)),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: () {
                _onSelected(2);
              },
              child: humanListTiles(
                  context,
                  'Attendance',
                  _selectedIndex == 2
                      ? Colors.indigoAccent
                      : Colors.transparent)),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: () {
                _onSelected(3);
              },
              child: humanListTiles(
                  context,
                  'Recruitment',
                  _selectedIndex == 3
                      ? Colors.indigoAccent
                      : Colors.transparent)),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: () {
                _onSelected(4);
              },
              child: humanListTiles(
                  context,
                  'Goal Management',
                  _selectedIndex == 4
                      ? Colors.indigoAccent
                      : Colors.transparent)),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: () {
                _onSelected(5);
              },
              child: humanListTiles(
                  context,
                  'OnBoarding',
                  _selectedIndex == 5
                      ? Colors.indigoAccent
                      : Colors.transparent)),
        ],
      ),
    );
  }

  Widget humanListTiles(context, title, color) {
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
