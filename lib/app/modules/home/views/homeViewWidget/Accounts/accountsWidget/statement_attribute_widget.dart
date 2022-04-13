import 'package:flutter/material.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/subRoute/sub_route_name.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/subServices/sub_navigation_services.dart';

import '../../subServices/sub_locator.dart';

class StatementAttributeWidget extends StatefulWidget {
  const StatementAttributeWidget({Key? key}) : super(key: key);

  @override
  _StatementAttributeWidgetState createState() => _StatementAttributeWidgetState();
}

class _StatementAttributeWidgetState extends State<StatementAttributeWidget> {
  int _selectedIndexSubTiles = -1;
  List<int> indexSubTiles = [0, 1, 2,3];
  _onSelectedSubTiles(int index) {
    setState(() => _selectedIndexSubTiles = index);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      child: Column(
        children: [
          InkWell(
              onTap: (){
                locator<SubNavigationServices>().subNavigateTo(toProfitLoss);
                _onSelectedSubTiles(0);
                },
              child: statementListSubTiles(context, 'Profit and Loss', _selectedIndexSubTiles==0?Colors.black12:Colors.transparent)),
          InkWell(
              onTap: (){
                locator<SubNavigationServices>().subNavigateTo(toBalanceSheet);
                _onSelectedSubTiles(1);
                },
              child: statementListSubTiles(context, 'Balance Sheet', _selectedIndexSubTiles==1?Colors.black12:Colors.transparent)),
          InkWell(
              onTap: (){_onSelectedSubTiles(2);},
              child: statementListSubTiles(context, 'Trial Balance', _selectedIndexSubTiles==2?Colors.black12:Colors.transparent)),
          InkWell(
              onTap: (){_onSelectedSubTiles(3);},
              child: statementListSubTiles(context, 'Cash Flow', _selectedIndexSubTiles==3?Colors.black12:Colors.transparent)),

        ],
      ),
    );
  }
  Widget statementListSubTiles(context,title,color){
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children: [
          Container(
            width: 140,
            decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(title),
            ),
          )
        ],
      ),
    );
  }
}
