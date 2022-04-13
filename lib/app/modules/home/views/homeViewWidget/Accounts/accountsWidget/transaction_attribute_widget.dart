import 'package:flutter/material.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/subRoute/sub_route_name.dart';

import '../../../services/locator.dart';
import '../../subServices/sub_navigation_services.dart';


class TransactionAttributeWidget extends StatefulWidget {
  const TransactionAttributeWidget({Key? key}) : super(key: key);

  @override
  _TransactionAttributeWidgetState createState() => _TransactionAttributeWidgetState();
}

class _TransactionAttributeWidgetState extends State<TransactionAttributeWidget> {
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
                locator<SubNavigationServices>().subNavigateTo(toCashReceipt);
                _onSelectedSubTiles(0);},
              child: transactionListSubTiles(context, 'Cash Receipts', _selectedIndexSubTiles==0?Colors.black12:Colors.transparent)),
          InkWell(
              onTap: (){
                locator<SubNavigationServices>().subNavigateTo(toCashPayment);
                _onSelectedSubTiles(1);
                },
              child: transactionListSubTiles(context, 'Cash Payment ', _selectedIndexSubTiles==1?Colors.black12:Colors.transparent)),
          InkWell(
              onTap: (){_onSelectedSubTiles(2);},
              child: transactionListSubTiles(context, 'Bank Receipts', _selectedIndexSubTiles==2?Colors.black12:Colors.transparent)),
          InkWell(
              onTap: (){_onSelectedSubTiles(3);},
              child: transactionListSubTiles(context, 'Bank Payments', _selectedIndexSubTiles==3?Colors.black12:Colors.transparent)),

        ],
      ),
    );
  }
  Widget transactionListSubTiles(context,title,color){
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
