
import 'package:flutter/material.dart';

class GenericPage extends StatefulWidget {

  AppBar appBar;
  String pageName;
  Color color;

  GenericPage({this.pageName = "Generic", this.color}) {
    this.appBar = AppBar(title: Text(pageName));
  }

  AppBar getAppBar() {
    return appBar;
  }

  @override
  State<StatefulWidget> createState() {
    return new GenericPageState();
  }

}

class GenericPageState extends State<GenericPage> {

  @override
  Widget build(BuildContext context) {
    return new Container(color: Colors.blue);
  }

}