import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
        return new home_page();
  }
}

class home_page extends State<HomePage>{
  final TextEditingController heightFigure = new TextEditingController();
  final TextEditingController weightFigure = new TextEditingController();
  double finalResult;
  String finalText = "Please enter values";
  String analysis = "(enter values to continue)";
  var Category = ["Healthy", "Overweight", "Obese"];

  void calculateBmi (){
    setState(() {
      if ((heightFigure.text.isNotEmpty && double.parse(heightFigure.text) > 0) && (weightFigure.text.isNotEmpty && double.parse(weightFigure.text) > 0))
      {
        finalResult = 703 * (double.parse(weightFigure.text) / ((double.parse(heightFigure.text) * 12) * (double.parse(heightFigure.text) * 12)));
        finalText = "Your BMI: ${finalResult.toStringAsFixed(2)} kg/m(squared)";

        if (finalResult < 25){
          analysis = Category[0];
        }
        else if(finalResult >= 25 && finalResult <= 29.9){
          analysis = Category[1];
        }
        else {
          analysis = Category[2];
        }
      }
      else{
        finalText = "Please enter values";
        analysis = "(enter values to continue)";
      }
    });
  }

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
          body: new ListView(
              children: <Widget>[
                new Center(
                  child: new Container(
                    child: new Column(
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
                                controller: heightFigure,
                                decoration: new InputDecoration(
                                    labelText: "Height in feet",
                                    icon: new Icon(Icons.insert_chart)
                                ),
                                keyboardType: TextInputType.number,
                              ),
                              new TextField(
                                controller: weightFigure,
                                decoration: new InputDecoration(
                                    labelText: "Weight in lb",
                                    icon: new Icon(Icons.line_weight)
                                ),
                                keyboardType: TextInputType.number,
                              ),
                              new Padding(padding: new EdgeInsets.all(7.0)),
                              new RaisedButton(onPressed: calculateBmi,
                                child: new Text("Calculate",
                                  style: new TextStyle(color: Colors.white),),
                                color: Colors.black38,)
                            ],
                          ),
                        ),
                        new Container(
                          alignment: Alignment.center,
                          child: new Text(finalText,
                            style: new TextStyle(
                                color: Colors.blue,
                                fontStyle: FontStyle.italic,
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        new Padding(padding: new EdgeInsets.all(7)),
                        new Container(
                          alignment: Alignment.center,
                          child: new Text(analysis,
                            style: new TextStyle(color: Colors.black38,
                                fontSize: 18,
                                fontWeight: FontWeight.w900),),
                        ),
                        new Padding(padding: new EdgeInsets.all(7))
                      ],
                    ),
                  ),)
              ]
          )
        );
  }
}