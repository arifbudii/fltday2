import 'package:flutter/material.dart';
import 'secondscreen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

// class _FirstScreenState extends State<FirstScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: RaisedButton(
//           onPressed: () {
//               Navigator.pushNamed(context, "kedua");
//           },
//           child: Text("Next"),
//         ),
//       ),
//     );
//   }
// }
class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            //Navigator.pushReplacement(context, MaterialPageRoute(
              Navigator.push(context, MaterialPageRoute(
              builder: (context)=>SecondScreen("HAIHAI")
            ));
          },
          child: Text("Next Screen"),
        ),
      ),
    );
  }
}