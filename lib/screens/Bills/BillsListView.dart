import 'package:billma/components/ListTiles/BillListTile.dart';
import 'package:billma/components/ListTiles/ListHeaderTitle.dart';
import 'package:billma/models/bills_testdata.dart';
import 'package:flutter/material.dart';

class BillsListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BillsListViewState();
  }

}

class BillsListViewState extends State<BillsListView>{

  List<Widget> _uiBills = List();

  List<Widget> getBills() {
    BillsTestData.bills.keys.forEach((period) {
      _uiBills.add(ListHeaderTitle(period, icon:Icon(Icons.linear_scale), color: Colors.black26));
      BillsTestData.bills[period].forEach((bill) {
        _uiBills.add(BillListTile(bill));
        _uiBills.add(Divider());
      });
    });
    return _uiBills;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> billItems = getBills();
    ListView _billsView = ListView(
      children: billItems,
    );
    return _billsView;
  }

}