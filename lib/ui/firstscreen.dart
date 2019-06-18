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
  TextEditingController nama, email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              TextFormField(
                controller: nama,
                decoration: InputDecoration(
                  //hintText: "Nama Lengkap",
                  labelText: "Nama",
                  icon: Icon(Icons.account_circle),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  //hintText: "Nama Lengkap",
                  labelText: "Email",
                  icon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              RaisedButton(
                onPressed: (){
                  //Navigator.pushReplacement(context, MaterialPageRoute(
                    Navigator.push(context, MaterialPageRoute(
                    //builder: (context)=>SecondScreen("HAIHAI")
                    builder: (context)=>SecondScreen(
                      datanya: nama.text,
                      datanya2: email.text,
                    )
                  ));
                },
                child: Text("Next Screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}