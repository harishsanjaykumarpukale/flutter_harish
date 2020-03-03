import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
class Prescription extends StatefulWidget {
  @override
  _PrescriptionState createState() => _PrescriptionState();
}

class _PrescriptionState extends State<Prescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2B276D),
        title: new Text("EPRO"),
        centerTitle: true,
        elevation: 1.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              icon: Icon(Icons.person_outline),
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
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                activeIcon: Icon(OMIcons.place,size: 40.0,color: Color(0xFF2B276D),),
                icon: IconButton(
                  //color: _currentIndex == 0 ? Color(0xFF2B276D) : Colors.black,
                  color: Colors.black,
                  icon: Icon(OMIcons.place,size: 40.0,),
                  onPressed: (){
                    // Navigator.of(context).pushNamed("/visit");
                  },
                ),
                title: Text("Visit")
            ),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.question_answer,size: 40.0,color: Color(0xFF2B276D),),
                icon: IconButton(
                  color: Colors.black,
                  icon: Icon(OMIcons.questionAnswer,size: 40.0,),
                  onPressed: (){
                    // Navigator.of(context).pushNamed("/questionnaire");
                  },
                ),
                title: Text("Questionnaire")
            ),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.note,size: 40.0,color: Color(0xFF2B276D),),
                icon: IconButton(
                  color: Colors.black,
                  icon: Icon(OMIcons.note,size: 40.0,),
                  onPressed: (){
                    Navigator.of(context).pushNamed("/prescription");
                  },
                ),
                title: Text("Prescription")
            ),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home,size: 40.0,color: Color(0xFF2B276D),),
                icon: IconButton(
                  color: Colors.black,
                  icon: Icon(OMIcons.home,size: 40.0,),
                  onPressed: (){
                  },

                ),
                title: Text("Home")
            ),
          ]


      ),
    );
  }
}

