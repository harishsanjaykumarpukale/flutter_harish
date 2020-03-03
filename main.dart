import 'package:flutter/material.dart';
import 'package:flutter_harish/MyAccount.dart';
import 'package:flutter_harish/MyHome.dart';
import 'package:flutter_harish/Prescription.dart';
import 'package:flutter_harish/Visit.dart';
import 'package:flutter_harish/Questionnaire.dart';
import 'package:flutter_harish/PrescriptionHistory.dart';
import 'package:flutter_harish/EditPrescriptionHistory.dart';


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
        "/myaccount": (BuildContext context) => MyAccount(),
        "/visit":(BuildContext context) => Visit(),
        "/questionnaire":(BuildContext context) => Questionnaire(),
        "/prescrhistory":(BuildContext context) => PrescriptionHistory(),
        "editprescrhist":(BuildContext context) => EditPrescriptionHistory()
      }
    );
  }
}


