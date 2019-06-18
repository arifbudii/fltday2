import 'package:flutter/material.dart';
import 'package:hello_class/ui/firstscreen.dart';
import 'package:hello_class/ui/secondscreen.dart';


void main() {
  runApp(MaterialApp(
    //home: FirstScreen(),
    initialRoute: "pertama",
    debugShowCheckedModeBanner: false,
    routes: {
      "pertama" : (context)=>FirstScreen(),
      "kedua" : (context)=>SecondScreen(),
    },
  ));
}