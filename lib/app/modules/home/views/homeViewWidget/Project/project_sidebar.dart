import 'package:flutter/material.dart';

class ProjectSidebar extends StatefulWidget {
  const ProjectSidebar({Key? key}) : super(key: key);

  @override
  _ProjectSidebarState createState() => _ProjectSidebarState();
}

class _ProjectSidebarState extends State<ProjectSidebar> {
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
            "Projects",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          ),
          const Padding(padding: EdgeInsets.all(15)),
          InkWell(
              onTap: () {
                _onSelected(0);
              },
              child: projectListTiles(
                  context,
                  'Projects',
                  _selectedIndex == 0
                      ? Colors.indigoAccent
                      : Colors.transparent)),
          //_selectedIndex==0?const AccountingAttributeWidget():Container(),

        ],
      ),
    );
  }

  Widget projectListTiles(context, title, color) {
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
