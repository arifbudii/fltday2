import 'package:flutter/material.dart';
import 'firstscreen.dart';

class SecondScreen extends StatefulWidget {
  final String datanya;
  SecondScreen(this.datanya);
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