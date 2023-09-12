import 'package:flutter/material.dart';
import 'package:myapp/Registrationpage.dart';
import 'package:myapp/loginpage.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homepage(),
  ));
}

class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome user!",
            style: TextStyle(fontSize: 50,
            fontWeight: FontWeight.bold),),
            
            Padding(padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Registrationpage()));
        },
        child: const Text("Singn up")),
            ),

            Padding(padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => loginpage()));
        },
        child: const Text("Login")),
            ),
          ]
          ),
      ),
    );
  }
}