import 'package:flutter/material.dart';


class DocsSidebar extends StatefulWidget {
  const DocsSidebar({Key? key}) : super(key: key);

  @override
  _DocsSidebarState createState() => _DocsSidebarState();
}

class _DocsSidebarState extends State<DocsSidebar> {
  int _selectedIndex = 0;
  List<int> index = [0, 1, 2,3,4,5];


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
          const Text("Docs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
          const Padding(padding: EdgeInsets.all(15)),
          InkWell(
              onTap: (){_onSelected(0);},
              child: docsListTiles(context, 'All', _selectedIndex==0?Colors.indigoAccent:Colors.transparent)),
          //_selectedIndex==0?const AccountingAttributeWidget():Container(),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: (){_onSelected(1);},
              child: docsListTiles(context, 'System Folder', _selectedIndex==1?Colors.indigoAccent:Colors.transparent)),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: (){_onSelected(2);},
              child: docsListTiles(context, 'My Folders', _selectedIndex==2?Colors.indigoAccent:Colors.transparent)),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: (){_onSelected(3);},
              child: docsListTiles(context, 'Public folder', _selectedIndex==3?Colors.indigoAccent:Colors.transparent)),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: (){_onSelected(4);},
              child: docsListTiles(context, 'Shared by me', _selectedIndex==4?Colors.indigoAccent:Colors.transparent)),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: (){_onSelected(5);},
              child: docsListTiles(context, 'Shared with me', _selectedIndex==5?Colors.indigoAccent:Colors.transparent)),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: (){_onSelected(6);},
              child: docsListTiles(context, 'Trash bin', _selectedIndex==6?Colors.indigoAccent:Colors.transparent)),

        ],
      ),
    );
  }

  Widget docsListTiles(context,title,color){
    return  Row(
      children: [
        Text(title.toUpperCase(),style: const TextStyle(fontSize: 15),),
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
