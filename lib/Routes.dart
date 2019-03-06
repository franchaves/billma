import 'package:flutter/material.dart';
import 'package:billma/screens/Login/index.dart';
import 'package:billma/screens/SignUp/index.dart';
import 'package:billma/screens/Home/index.dart';
import 'package:billma/theme/style.dart';

class Routes {

  var routes = <String, WidgetBuilder>{
    "/SignUp": (BuildContext context) => new SignUpScreen(),
    "/HomePage": (BuildContext context) => new HomeScreen()
  };

  Routes() {
    runApp(new MaterialApp(
      title: "BillMa - Smartest Bill Payment Assistant",
      home: new LoginScreen(),
      theme: appTheme,
      routes: routes,
    ));
  }
}
