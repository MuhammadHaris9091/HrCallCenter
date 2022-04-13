import 'package:flutter/material.dart';

class SalesSidebar extends StatefulWidget {
  const SalesSidebar({Key? key}) : super(key: key);

  @override
  _SalesSidebarState createState() => _SalesSidebarState();
}

class _SalesSidebarState extends State<SalesSidebar> {
  int _selectedIndex = 0;
  List<int> index = [0, 1, 2, 3];


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
          const Text("Sales",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
          const Padding(padding: EdgeInsets.all(15)),
          InkWell(
              onTap: (){_onSelected(0);},
              child: docsListTiles(context, 'Dashboard', _selectedIndex==0?Colors.indigoAccent:Colors.transparent)),
          //_selectedIndex==0?const AccountingAttributeWidget():Container(),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: (){_onSelected(1);},
              child: docsListTiles(context, 'Sales', _selectedIndex==1?Colors.indigoAccent:Colors.transparent)),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: (){_onSelected(2);},
              child: docsListTiles(context, 'Computer Service', _selectedIndex==2?Colors.indigoAccent:Colors.transparent)),
          const Padding(padding: EdgeInsets.all(8.0)),
          InkWell(
              onTap: (){_onSelected(3);},
              child: docsListTiles(context, 'Marketing', _selectedIndex==3?Colors.indigoAccent:Colors.transparent)),

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
