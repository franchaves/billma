import 'package:billma/models/Bill.dart';
import 'package:billma/models/bills_testdata.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class BillListTile extends StatelessWidget {

  static const Map<String,Icon> _billIcons = {
    'BILL_STATUS.APPROVED': Icon(Icons.done,color: Colors.green, ),
    'BILL_STATUS.CANCELLED': Icon(Icons.cancel, color: Colors.red),
    'BILL_STATUS.DELAYED': Icon(Icons.timer_off),
    'BILL_STATUS.PAID': Icon(Icons.timer_off),
    'BILL_STATUS.PENDING': Icon(Icons.pan_tool, color: Colors.redAccent, size: 20,),
    'BILL_TYPE.RECURRING': Icon(Icons.schedule),
    'BILL_TYPE.ONE_TIME': Icon(Icons.looks_one),
  };

  Bill bill;
  ListTile listTile;

  BillListTile(Bill bill) {
    this.bill = bill;
  }

  @override
  Widget build(BuildContext context) {
    if(bill==null)
      return listTile;

    //Let's create the ListTile layout
    listTile = ListTile(
      leading: _getBillerIcon(bill.billerName),
      title: Text(bill.billerName,style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Column (
        children: <Widget>[
          Row (children: <Widget>[Text(bill.description)],),
          Row (children: <Widget>[Text(formatDate(bill.dueDate)),
                                  Text(" "+formatCurrency(bill.value))],mainAxisAlignment: MainAxisAlignment.spaceBetween,)
        ],
      ),
      trailing: Column (
        children: <Widget>[_billIcons[bill.billType.toString()],
                           _billIcons[bill.billStatus.toString()]],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      )
    );

    return listTile;
  }

  Image _getBillerIcon(String billerName) {
    Image image;
    try {
      image = Image.asset("assets/images/"+BillsTestData.billerIcons[billerName], height: 32, width: 32,);
    }
    catch (e) {
      image = Image.asset("assets/images/Valdemoro.png", height: 32, width: 32,);
    }
    return image;
  }

  String formatCurrency(double value) {
    NumberFormat numberFormat = NumberFormat.currency(symbol: '\$', decimalDigits: 0);
    return numberFormat.format(value);
  }

  String formatDate(DateTime dateValue) {
    return DateFormat.yMMMMd("en_US").format(dateValue);
  }

}