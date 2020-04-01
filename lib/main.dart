import 'package:flutter/material.dart';
import './ui/HomePage.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "BMI",
    home: new HomePage(),
  ));
}