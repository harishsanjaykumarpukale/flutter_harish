import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
class Prescription extends StatefulWidget {
  @override
  _PrescriptionState createState() => _PrescriptionState();
}

class _PrescriptionState extends State<Prescription> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: new Text("EPRO",style: TextStyle(color: Color(0xFF2B276D)),),
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Color(0xFF2B276D),
          onPressed: (){
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        centerTitle: true,
        elevation: 1.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              icon: Icon(Icons.account_box),
              color: Color(0xFF2B276D),
              iconSize: 40.0,
              onPressed: (){
                Navigator.of(context).pushNamed("/myaccount");
              },
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Divider(height: 10,),
          ListTile(
            contentPadding: EdgeInsets.all(3.0),
            title: Text("Prescription",textScaleFactor: 2.0,textAlign: TextAlign.center,),
            trailing: IconButton(
              icon: Icon(Icons.history,size: 30.0,),
              onPressed: (){
                Navigator.of(context).pushNamed("/prescrhistory");
              },
              color: Colors.black,
            ),
          ),
          Divider(height: 10,thickness: 10,),
          Card(
            borderOnForeground: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
            //margin: EdgeInsets.all(30.0),
            child: ListTile(
              title: Text("Name of medicine"),
              subtitle: Text("Scheduled for: time\nHave you taken?"),
              leading: Icon(Icons.note,size: 50.0,),
              isThreeLine: true,
            ),

          ),
          ButtonTheme.bar(
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: Text("Yes"),
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(),
                  color: Colors.greenAccent,
                  onPressed: (){

                  }
                ),
                FlatButton(
                  child: Text("No"),
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(),
                  color: Colors.redAccent,
                  onPressed: (){

                  },
                )
              ],
            ),
          ),
          Divider(height: 30.0,thickness: 10),
          Card(
            borderOnForeground: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
            //margin: EdgeInsets.all(30.0),
            child: ListTile(
              title: Text("Name of medicine"),
              subtitle: Text("Scheduled for: time\nHave you taken?"),
              leading: Icon(Icons.note,size: 50.0,),
              isThreeLine: true,
            ),

          ),
          ButtonTheme.bar(
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                    child: Text("Yes"),
                    textColor: Colors.black,
                    shape: RoundedRectangleBorder(),
                    color: Colors.greenAccent,
                    onPressed: (){

                    }
                ),
                FlatButton(
                  child: Text("No"),
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(),
                  color: Colors.redAccent,
                  onPressed: (){

                  },
                )
              ],
            ),
          ),
          Divider(height: 30.0,thickness: 10),
          Card(
            borderOnForeground: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
            //margin: EdgeInsets.all(30.0),
            child: ListTile(
              title: Text("Name of medicine"),
              subtitle: Text("Scheduled for: time\nHave you taken?"),
              leading: Icon(Icons.note,size: 50.0,),
              isThreeLine: true,
            ),

          ),
          ButtonTheme.bar(
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                    child: Text("Yes"),
                    textColor: Colors.black,
                    shape: RoundedRectangleBorder(),
                    color: Colors.greenAccent,
                    onPressed: (){

                    }
                ),
                FlatButton(
                  child: Text("No"),
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(),
                  color: Colors.redAccent,
                  onPressed: (){

                  },
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                  icon: Icon(Icons.home,color: Color(0xFF2B276D)),
                  onPressed: null
              ),
              new IconButton(
                  icon: Icon(Icons.local_hospital,color: Color(0xFF2B276D)),
                  onPressed: (){
                    Navigator.of(context).pushNamed("/visit");
                  }
              ),
              new IconButton(
                  icon: Icon(Icons.assignment,color: Color(0xFF2B276D)),
                  onPressed: (){
                    Navigator.of(context).pushNamed("/prescription");
                  }
              ),
              new IconButton(
                  icon: Icon(Icons.question_answer,color: Color(0xFF2B276D)),
                  onPressed: (){
                    Navigator.of(context).pushNamed("/questionnaire");
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}

