import 'package:flutter/material.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/Docs/docs_sidebar.dart';

class Docs extends StatefulWidget {
  const Docs({Key? key}) : super(key: key);

  @override
  _DocsState createState() => _DocsState();
}

class _DocsState extends State<Docs> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const DocsSidebar(),
        Expanded(
            flex: 17,
            child: Container()),

      ],
    );
  }
}
