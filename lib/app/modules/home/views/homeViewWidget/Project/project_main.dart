import 'package:flutter/material.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Project/project_sidebar.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ProjectSidebar(),
        Expanded(
            flex: 17,
            child: Container()),

      ],
    );
  }
}
