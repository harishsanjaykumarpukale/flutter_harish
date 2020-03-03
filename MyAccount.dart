import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  Future<String> _asyncInputDialog(BuildContext context) async {
    String teamName = '';
    return showDialog<String>(
      context: context,
      barrierDismissible: false, // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Reset Password'),
          content: new  Column(
            children: <Widget>[
              new Expanded(
                  child: new TextField(
                    autofocus: true,
                    decoration: new InputDecoration(
                        labelText: 'Current Password'),
                    onChanged: (value) {
                      teamName = value;
                    },
                  )),
              new Expanded(
                  child: new TextField(
                    autofocus: true,
                    decoration: new InputDecoration(
                        labelText: 'New Password'),
                    onChanged: (value) {
                      teamName = value;
                    },
                  )),
              new Expanded(
                  child: new TextField(
                    autofocus: true,
                    decoration: new InputDecoration(
                        labelText: 'Confirm New Password'),
                    onChanged: (value) {
                      teamName = value;
                    },
                  ))
            ],
          ),
          actions: <Widget>[
            FlatButton(
              
              child: Text('Submit'),
              onPressed: () {
                Navigator.of(context).pop(teamName);
              },
            ),
          ],
        );
      },
    );
  }
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

      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Divider(height: 10,),

              ListTile(
                enabled: false,
                contentPadding: EdgeInsets.all(3.0),
                title: Text("Name",textScaleFactor: 2.0,textAlign: TextAlign.center,maxLines: 2,),
                trailing: IconButton(
                  icon: Icon(Icons.edit,size: 30.0,),
                  onPressed: (){

                  },
                  color: Colors.black,
                ),
              ),
              //Divider(height: 10,thickness: 10,),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("email-id-xyz@abc.com"),
                enabled: false,
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('phone-number'),
                enabled: false,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Gender:M/F'),
                enabled: false,
              ),
              ListTile(
                leading: Icon(Icons.today),
                title: Text('D.O.B:-DD-MM-YYYY'),
                enabled: false,
              ),

              Divider(height: 30.0,thickness: 10),
              FlatButton(
                  child: Text("Edit Profile"),
                  padding: EdgeInsets.all(20.0),

                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(),
                  onPressed: (){

                  }
              ),
              Divider(height: 30.0,thickness: 10),
              FlatButton(
                  child: Text("Change Password"),
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(),
                  onPressed: (){
                    _asyncInputDialog(context);
                  }
              ),
              Divider(height: 30.0,thickness: 10),
              FlatButton(
                  child: Text("Logout"),
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(),
                  onPressed: (){

                  }
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
          ]


      ),
    );
  }
}


//Column(
//            children: <Widget>[
//              Divider(height: 10,),
//              ListTile(
//                contentPadding: EdgeInsets.all(3.0),
//                title: Text("Name",textScaleFactor: 2.0),
//                trailing: IconButton(
//                  icon: Icon(Icons.edit,size: 30.0,),
//                  onPressed: (){
//
//                  },
//                  color: Colors.black,
//                ),
//              ),
//              Divider(height: 10,thickness: 10,),
//              Container(
//                height: 300,
//                margin: EdgeInsets.all(10.0),
//                child: Card(
//                  elevation: 8.0,
//                  child: ListView(
//                    children: <Widget>[
//                      ListTile(
//                        leading: Icon(Icons.email),
//                        title: Text("email-id-xyz@abc.com"),
//                        enabled: false,
//                      ),
//                      ListTile(
//                        leading: Icon(Icons.phone),
//                        title: Text('phone-number'),
//                        enabled: false,
//                      ),
//                      ListTile(
//                        leading: Icon(Icons.person),
//                        title: Text('Gender:M/F'),
//                        enabled: false,
//                      ),
//                      ListTile(
//                        leading: Icon(Icons.today),
//                        title: Text('D.O.B:-DD-MM-YYYY'),
//                        enabled: false,
//                      )
//                    ],
//                  ),
//                ),
//              ),
//
//              Divider(height: 30.0,thickness: 10),
//              FlatButton(
//                  child: Text("Edit Profile"),
//                  textColor: Colors.black,
//                  shape: RoundedRectangleBorder(),
//                  onPressed: (){
//
//                  }
//              ),
//              Divider(height: 30.0,thickness: 10),
//              FlatButton(
//                  child: Text("Change Password"),
//                  textColor: Colors.black,
//                  shape: RoundedRectangleBorder(),
//                  onPressed: (){
//                    _asyncInputDialog(context);
//                  }
//              ),
//              Divider(height: 30.0,thickness: 10),
//              FlatButton(
//                  child: Text("Logout"),
//                  textColor: Colors.black,
//                  shape: RoundedRectangleBorder(),
//                  onPressed: (){
//
//                  }
//              ),
//            ],
//          )