import 'package:flutter/material.dart';
import 'firstscreen.dart';

class SecondScreen extends StatefulWidget {
  final String datanya;
  final String datanya2;
  SecondScreen({this.datanya = "Default 1", this.datanya2});
  // SecondScreen(this.datanya, this.datanya2);
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget.datanya),
            Text(widget.datanya2),
            RaisedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}