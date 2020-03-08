import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class PrescriptionHistory extends StatelessWidget {
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
      body: Center(
          child: new ListView(
            children: <Widget>[
              Card(
                elevation: 8,
                borderOnForeground: true,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
                margin: EdgeInsets.all(30.0),
                child: ListTile(
                  title: Text("Today's"),
                  leading: Icon(Icons.today,size: 50.0,),
                  onTap: (){
                    Navigator.of(context).pushNamed("editprescrhist");
                  },
                ),
              ),
              Card(
                elevation: 8,
                borderOnForeground: true,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
                margin: EdgeInsets.all(30.0),
                child: ListTile(
                  title: Text("Yesterday's"),
                  leading: Icon(Icons.today,size: 50.0,),
                  onTap: (){

                  },
                ),
              ),
              Card(
                elevation: 8,
                borderOnForeground: true,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
                margin: EdgeInsets.all(30.0),
                child: ListTile(
                  title: Text("DD-MM-YYYY"),
                  leading: Icon(Icons.calendar_today,size: 50.0,),
                  onTap: (){

                  },
                ),
              ),

            ],
          )
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
