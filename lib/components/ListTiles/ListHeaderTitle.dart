import 'package:flutter/material.dart';

class ListHeaderTitle extends StatelessWidget {

  String title;
  Color color;
  Icon icon;
  int height;

  ListHeaderTitle(String title, {this.icon, this.color, this.height}) {
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return  new Container (
        decoration: new BoxDecoration (
            color: color
        ),
        child: new ListTile (
            leading: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: icon
        )
    );
  }

}