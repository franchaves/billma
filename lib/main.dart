import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;
import 'package:billma/Routes.dart';
import 'package:timezone/timezone.dart';

void main() async  {
  ByteData loadedData;
  await Future.wait<void>(<Future<void>>[
    rootBundle.load('assets/timezone/2018c.tzf').then((ByteData data) {
      loadedData = data;
      print('loaded data');
    })
  ]);
  initializeDatabase(loadedData.buffer.asUint8List());
  //Invokes the MaterialApp constructor
  new Routes();
}