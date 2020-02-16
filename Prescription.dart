import 'package:flutter/material.dart';
class Prescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("EPRO"),
      ),
      body: new Center(
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 8,
              borderOnForeground: true,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
              margin: EdgeInsets.all(30.0),
              child: ListTile(
                title: Text("Have you taken  medicine"),
                leading: Icon(Icons.note,size: 50.0,),
              ),
            ),
          ],
        )
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
