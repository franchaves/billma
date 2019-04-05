import 'package:billma/components/ListTiles/BillListTile.dart';
import 'package:billma/components/ListTiles/ListHeaderTitle.dart';
import 'package:billma/components/Pages/GenericPage.dart';
import 'package:billma/models/Bill.dart';
import 'package:billma/screens/Bills/BillsCalendarView.dart';
import 'package:billma/screens/Bills/BillsListView.dart';
import 'package:flutter/material.dart';
import 'package:billma/models/bills_testdata.dart';

class BillsPage extends GenericPage  {

  BillsPage({String pageName}) {
    super.pageName = pageName;
  }

  @override
  BillsPageState createState() {
    return BillsPageState();
  }

}

class BillsPageState extends State<BillsPage> {

  bool isCalendarView = false;
  IconData calendarIcon = Icons.calendar_today;

  setCalendarView(bool isCalendarView){
    setState(() {
      if(mounted) {
        this.isCalendarView = isCalendarView;
        calendarIcon = (isCalendarView) ? Icons.view_list : Icons.calendar_today;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    widget.appBar = createAppBar();
    return (isCalendarView)?BillsCalendarView():BillsListView();
  }

  AppBar createAppBar() {
    return AppBar(
        centerTitle: true,
        title: Text(widget.pageName),
        actions: <Widget>[
          IconButton(icon: Icon(calendarIcon),
              tooltip: "Calendar View",
              onPressed: () {
                if(mounted) setCalendarView(!isCalendarView);
              }),
          IconButton(icon: Icon(Icons.add),
              tooltip: "Add a Bill",
              ),
        ]
    );
  }


}

