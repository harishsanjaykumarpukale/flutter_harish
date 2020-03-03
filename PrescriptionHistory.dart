import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class PrescriptionHistory extends StatelessWidget {
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
          ],


        )
    );
  }
}
