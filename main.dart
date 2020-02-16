import 'package:flutter/material.dart';
import 'package:flutter_harish/MyHome.dart';
import 'package:flutter_harish/Prescription.dart';


void main(){
  runApp(new MaterialApp(
    home: new MyApp(),

  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHome(),
      routes: <String, WidgetBuilder>{
        "/prescription": (BuildContext context) => Prescription(),
      }
    );
  }
}


