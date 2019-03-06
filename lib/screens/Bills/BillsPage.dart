import 'package:billma/components/ListTiles/BillListTile.dart';
import 'package:billma/components/ListTiles/ListHeaderTitle.dart';
import 'package:billma/components/Pages/GenericPage.dart';
import 'package:billma/models/Bill.dart';
import 'package:flutter/material.dart';
import 'package:billma/models/bills_testdata.dart';

class BillsPage extends GenericPage  {


  BillsPage({String pageName}) {
    super.pageName = pageName;
  }

  @override
  BillsPageState createState()  => new BillsPageState();

  @override
  AppBar getAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text(pageName),
      actions: <Widget> [
        IconButton (icon: Icon(Icons.calendar_today), tooltip: "Calendar View", onPressed: _calendarViewAction(),),
        IconButton (icon: Icon(Icons.add), tooltip: "Add a Bill", onPressed: _addABillAction(),),

      ]
    );
  }

  _calendarViewAction() {}

  _addABillAction() {}

}

class BillsPageState extends State<BillsPage> {

  List<Widget> _uiBills = List();

  @override
  Widget build(BuildContext context) {
    List<Widget> billItems = getBills();
    ListView _billsView = ListView(
      children: billItems,
    );
    return _billsView;
  }

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

}

