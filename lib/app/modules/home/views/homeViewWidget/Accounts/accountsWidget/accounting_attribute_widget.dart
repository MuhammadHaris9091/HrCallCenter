import 'package:flutter/material.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/subRoute/sub_route_name.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/subServices/sub_locator.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/subServices/sub_navigation_services.dart';

class AccountingAttributeWidget extends StatefulWidget {
  const AccountingAttributeWidget({Key? key}) : super(key: key);

  @override
  _AccountingAttributeWidgetState createState() => _AccountingAttributeWidgetState();
}

class _AccountingAttributeWidgetState extends State<AccountingAttributeWidget> {

  int _selectedIndexSubTiles = 0;
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
              _onSelectedSubTiles(0);
              locator<SubNavigationServices>().subNavigateTo(toSalesQuotes);
              },
              child: accountsListSubTiles(context, 'Sales Quotes', _selectedIndexSubTiles==0?Colors.black12:Colors.transparent)),
          InkWell(
              onTap: (){
                _onSelectedSubTiles(1);
                locator<SubNavigationServices>().subNavigateTo(toSalesOrder);
                },
              child: accountsListSubTiles(context, 'Sales Order', _selectedIndexSubTiles==1?Colors.black12:Colors.transparent)),
          InkWell(
              onTap: (){_onSelectedSubTiles(2);},
              child: accountsListSubTiles(context, 'Sales Invoices', _selectedIndexSubTiles==2?Colors.black12:Colors.transparent)),
          InkWell(
              onTap: (){_onSelectedSubTiles(3);},
              child: accountsListSubTiles(context, 'Recurring Invoice', _selectedIndexSubTiles==3?Colors.black12:Colors.transparent)),

        ],
      ),
    );
  }
  Widget accountsListSubTiles(context,title,color){
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
