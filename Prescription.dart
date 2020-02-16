import 'package:flutter/material.dart';

class Prescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("EPRO"),
      ),
      body: new Center(
        child: new Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const ListTile(
                leading: const Icon(Icons.place,size: 50.0),
                title: Text("Upcoming Visit - 20/02/20"),
                subtitle: Text("Your Next Visit is Scheduled on 20/02/20"),
                isThreeLine: true,
              ),
              new Divider(),
              const ListTile(
                leading: const Icon(Icons.note,size: 50.0,),
                title: Text("Upcoming Prescription "),
              ),

              new Divider(),

              const ListTile(
                leading: const Icon(Icons.question_answer,size: 50.0,),
                title: Text("Questionnaire"),
                subtitle: Text("You have a Questionnaire to answer"),
                isThreeLine: true,
              ),

//              new Divider(),
//
//              ListTile(
//                leading: GestureDetector(
//                  behavior: HitTestBehavior.translucent,
//                  onTap: () {
//                    Navigator.of(context).pushNamed("/prescription");
//                  },
//                  child: Container(
//                    width: 48,
//                    height: 48,
//                    padding: EdgeInsets.symmetric(vertical: 4.0),
//                    alignment: Alignment.center,
//                    child: CircleAvatar(),
//                  ),
//                ),
//                enabled: true,
//                title: Text('title'),
//                dense: false,
//              ),
            ],
          ),
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
