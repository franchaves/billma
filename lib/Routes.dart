import 'package:flutter/material.dart';
import 'package:billma/screens/Login/index.dart';
import 'package:billma/screens/SignUp/index.dart';
import 'package:billma/screens/Home/index.dart';
import 'package:billma/theme/style.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Routes {

  var routes = <String, WidgetBuilder>{
    "/SignUp": (BuildContext context) => new SignUpScreen(),
    "/HomePage": (BuildContext context) => new HomeScreen()
  };

  Routes() {
    FlutterNativeTimezone.getLocalTimezone();
    runApp(new MaterialApp(
      title: "BillMa - Smartest Bill Payment Assistant",
      home: new LoginScreen(),
      theme: appTheme,
      routes: routes,
      localizationsDelegates: const <LocalizationsDelegate<MaterialLocalizations>>[
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: const <Locale>[
        const Locale('en', ''),
        const Locale('fr', ''),
      ],
    ));
  }
}
