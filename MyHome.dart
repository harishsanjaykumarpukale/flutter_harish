import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(

      appBar: new AppBar(
        backgroundColor: Color(0xFF2B276D),
        title: new Text("EPRO"),
        centerTitle: true,
        elevation: 1.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
                icon: Icon(Icons.account_box),
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
            Card(
              elevation: 8,
              borderOnForeground: true,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
              margin: EdgeInsets.all(30.0),
              child: ListTile(
                title: Text("Upcoming Visit - 20/02/20"),
                subtitle: Text("Your Next Visit is Scheduled on 20/02/20"),
                leading: Icon(Icons.place,size: 50.0,),
              ),
            ),
            Card(
              elevation: 8,
              borderOnForeground: true,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
              margin: EdgeInsets.all(30.0),
              child: ListTile(
                title: Text("Prescription"),
                subtitle: Text("Take <medicine> at <time>"),
                leading: Icon(Icons.note,size: 50.0,),
                onTap: (){
                  Navigator.of(context).pushNamed("/prescription");
                },
              ),
            ),
            Card(
              elevation: 8,
              borderOnForeground: true,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
              margin: EdgeInsets.all(30.0),
              child: ListTile(
                title: Text("Questionnaire"),
                subtitle: Text("You have a Questionnaire to answer"),
                leading: Icon(Icons.question_answer,size: 50.0,),
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
                  icon: Icon(Icons.place),
                  onPressed: null
              ),
              new IconButton(
                  icon: Icon(Icons.question_answer),
                  onPressed: null
              ),
              new IconButton(
                  icon: Icon(Icons.history),
                  onPressed: (){
                    Navigator.of(context).pushNamed("/prescription");
                  }
              ),
              new IconButton(
                  icon: Icon(Icons.home),
                  onPressed: null
              )
            ],
          ),
        ),
      ),

    );
  }
}

