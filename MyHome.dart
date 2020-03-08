import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}


class _MyHomeState extends State<MyHome> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _currentIndex = 3;

  void _onItemTapped(index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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

      body: new Center(
        child: new ListView(
          children: <Widget>[
            Container(
              height: 300,
              //padding: EdgeInsets.all(15.0),
              child: Card(

                elevation: 8,
                borderOnForeground: true,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
                margin: EdgeInsets.all(15.0),

                child: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Align(
                      child: new Container(
                        width: 15.0,
                        height: 15.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle
                        ),
                      ),
                      alignment: Alignment.topRight,
                      ),
                    ListTile(
                      title: Text("Upcoming Visit - 20/02/20"),
                      subtitle: Text("Your Next Visit is Scheduled on 20/02/20 time: hh:mm"),
                      isThreeLine: true,
                      leading: Icon(Icons.place,size: 50.0,),

                    ),
                    ListTile(
                      isThreeLine: true,
                      title: Text("Name of Hospital"),
                      subtitle: Text("Address of Hospital \n Visit Number - "),
                      trailing: IconButton(
                        icon: Icon(Icons.directions,size: 50.0,),
                        onPressed: (){

                        },
                      ),
                    ),

                    ButtonTheme(
                      height: 40,
                      minWidth: 328,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
                      child: RaisedButton(
                        elevation: 2.0,

                        color: Color(0xFF2B276D),
                        child: Text("Reschedule",style: TextStyle(color: Colors.white),),
                        onPressed: (){
                        },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),

                      ),
                    )
                  ],


                )
              ),
            ),
            Container(
              height: 300,
              //padding: EdgeInsets.all(15.0),
              child: Card(

                  elevation: 8,
                  borderOnForeground: true,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
                  margin: EdgeInsets.all(15.0),

                  child: Column(

                    children: <Widget>[
                      ListTile(
                        title: Text("Prescription"),
                        subtitle: Text("Take <medicine> at <time>"),
                        leading: Icon(Icons.note,size: 50.0,),
                        onTap: (){
                          Navigator.of(context).pushNamed("/prescription");
                        },
                      ),
                    ],

                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  )
              ),
            ),
            Container(
              height: 300,
              //padding: EdgeInsets.all(15.0),
              child: Card(

                  elevation: 8,
                  borderOnForeground: true,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
                  margin: EdgeInsets.all(15.0),

                  child: Column(

                    children: <Widget>[
                      Align(
                        child: new Container(
                          width: 15.0,
                          height: 15.0,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle
                          ),
                        ),
                        alignment: Alignment.topRight,
                      ),
                      ListTile(
                        title: Text("Questionnaire"),
                        subtitle: Text("You have a Questionnaire to answer"),
                        leading: Icon(Icons.question_answer,size: 50.0,),
                      ),

                    ],
                  )
              ),
            ),


          ],
        )
      ),

      drawer: new Drawer(

        child: new ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(
              accountName: new Text("Harish S P"),
              decoration: new BoxDecoration(
                color: Color(0xFF2B276D)
              ),
              accountEmail: new Text("harish.s.pukale123@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
              ),

            ),

            new Divider(),
            new ListTile(
              title: new Text("Prescription History"),
              trailing: new Icon(Icons.note),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/prescription");
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("Visit History"),
              trailing: new Icon(Icons.place),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Questionaire History"),
              trailing: new Icon(Icons.question_answer),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.arrow_right),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),

          ],
        ),

      ),

      bottomNavigationBar: new Container(
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