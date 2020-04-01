import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
        return new home_page();
  }
}

class home_page extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(
            title: new Text("BMI",
              style: new TextStyle(color: Colors.white,
                fontWeight: FontWeight.w700
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.black38,
          ),
          backgroundColor: Colors.white,
          body: new Center(
            child: new Container(
               child: new ListView(
                 children: <Widget>[
                   new Image.asset('images/bmilogo.png',
                   width: 100,
                   height: 80,),
                   new Container(
                     color: Colors.grey.shade400,
                     width: 310,
                     height: 243,
                     child: new Column(
                       children: <Widget>[
                         new TextField(
                           controller: null,
                           decoration: new InputDecoration(
                             labelText: "Age",
                             icon: new Icon(Icons.person_outline)
                           ),
                           keyboardType: TextInputType.number,
                         ),
                         new TextField(
                           controller: null,
                           decoration: new InputDecoration(
                             labelText: "Height in feet",
                             icon: new Icon(Icons.insert_chart)
                           ),
                           keyboardType: TextInputType.number,
                         ),
                         new TextField(
                           controller: null,
                           decoration: new InputDecoration(
                             labelText: "Weight in lb",
                             icon: new Icon(Icons.line_weight)
                           ),
                           keyboardType: TextInputType.number,
                         ),
                         new Padding(padding: new EdgeInsets.all(7.0)),
                         new RaisedButton(onPressed: null,
                         child: new Text("Calculate",
                         style: new TextStyle(color: Colors.white),),
                         color: Colors.black38,)
                       ],
                     ),
                   ),
                   new Container(
                     alignment: Alignment.center,
                     child: new Text("Your BMI: ",
                        style: new TextStyle(
                          color: Colors.blue,
                          fontStyle: FontStyle.italic,
                          fontSize: 20
                        ),
                     ),
                   ),
                   new Padding(padding: new EdgeInsets.all(7)),
                   new Container(
                     alignment: Alignment.center,
                     child: new Text("YourAnalysis",
                     style: new TextStyle(color: Colors.black38,
                     fontSize: 18,
                     fontWeight: FontWeight.w900),),
                   ),
                   new Padding(padding: new EdgeInsets.all(7))
                 ],
               ),
            ),
          )
        );
  }
}