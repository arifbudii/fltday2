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
  final nama = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  bool _obScure = true;
  void showHidden(){
    setState(() {
     _obScure = !_obScure; 
    });
  }

  var _data1;
  pindah() async{
    _data1 = await Navigator.push(context, MaterialPageRoute(
      builder: (context) => SecondScreen(
        datanya: nama.text,
        datanya2: email.text,
        datanya3: password.text)
    ))
  }

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
                keyboardType: TextInputType.text,
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
                keyboardType: TextInputType.emailAddress,
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
                height: 30.0,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: _obScure,
                controller: password,
                decoration: InputDecoration(
                  //hintText: "Nama Lengkap",
                  labelText: "Password",
                  icon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      showHidden();
                    },
                    icon: Icon(_obScure ? Icons.visibility_off : Icons.visibility),
                    //icon: Icon(Icons.visibility_off),
                  )
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(_data1 ?? 'Forgot Password?'),
              SizedBox(
                height: 50.0,
              ),
              RaisedButton(
                onPressed: (){
                  //Navigator.pushReplacement(context, MaterialPageRoute(
                  //   Navigator.push(context, MaterialPageRoute(
                  //   //builder: (context)=>SecondScreen("HAIHAI")
                  //   builder: (context)=>SecondScreen(
                  //     datanya: nama.text,
                  //     datanya2: email.text,
                  //     datanya3: password.text,
                  //   )
                  // ));
                  pindah();
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