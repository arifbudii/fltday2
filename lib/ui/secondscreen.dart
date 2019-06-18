import 'package:flutter/material.dart';
import 'firstscreen.dart';

class SecondScreen extends StatefulWidget {
  final String datanya;
  final String datanya2;
  final String datanya3;
  SecondScreen({this.datanya = "Default 1", this.datanya2, this.datanya3});
  // SecondScreen(this.datanya, this.datanya2);
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String _var1 = "Variable Satu";
  String _var2 = "Variable Dua";
  String _var3 = "Variable Tiga";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget.datanya),
            Text(widget.datanya2 ?? "NULL/KOSONG"),
            Text(widget.datanya3),
            Text(_var1),
            Text(_var2),
            Text(_var3),
            RaisedButton(
              onPressed: (){
                Navigator.pop(context, _var1);
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}