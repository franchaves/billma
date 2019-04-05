import 'dart:math';
import 'package:billma/components/Pages/GenericPage.dart';
import 'package:billma/models/Bill.dart';
import 'package:flutter/material.dart';
import 'package:billma/models/bills_testdata.dart';
import 'package:sliver_calendar/sliver_calendar.dart';
import 'package:timezone/timezone.dart';

class BillsCalendarView extends GenericPage  {

  @override
  BillsCalendarViewState createState()  => new BillsCalendarViewState();

}

class BillsCalendarViewState extends State<BillsCalendarView> {

  List<Widget> _uiBills = List();
  List<CalendarEvent> events = <CalendarEvent>[];
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    TZDateTime nowTime = TZDateTime.now(local);
    CalendarWidget calendarWidget = CalendarWidget(
        initialDate: nowTime,
        beginningRangeDate: nowTime.subtract(new Duration(days: 31)),
        endingRangeDate: nowTime.add(new Duration(days: 31)),
        location: local,
        buildItem: buildItem,
        getEvents: getEvents,
        bannerHeader:
        new AssetImage("assets/images/calendarheader.png"),
        monthHeader:
        new AssetImage("assets/images/calendarbanner.jpg"),
        weekBeginsWithDay: 1, // Sunday = 0, Monday = 1, Tuesday = 2, ..., Saturday = 6
    );
    return calendarWidget;
  }

  Widget buildItem(BuildContext context, CalendarEvent e) {
    return new Card(
      child: new ListTile(
        title: new Text("Event ${e.index}"),
        subtitle: new Text("Yay for events"),
        leading: const Icon(Icons.gamepad),
      ),
    );
  }

  List<CalendarEvent> getEvents(DateTime start, DateTime end) {
    if (local != null && events.length == 0) {
      TZDateTime nowTime = new TZDateTime.now(local).subtract(new Duration(days: 5));
      for (int i = 0; i < 20; i++) {
        TZDateTime start =
        nowTime.add(new Duration(days: i + random.nextInt(10)));
        events.add(new CalendarEvent(
            index: i,
            instant: start,
            instantEnd: start.add(new Duration(minutes: 30))));
      }
    }
    return events;
  }

  /*List<CalendarEvent> getEvents() {
    BillsTestData.bills.keys.forEach((period) {
      _uiBills.add(ListHeaderTitle(period, icon:Icon(Icons.linear_scale), color: Colors.black26));
      BillsTestData.bills[period].forEach((bill) {
        _uiBills.add(BillListTile(bill));
        _uiBills.add(Divider());
      });
    });
    return _uiBills;
  }*/

}

