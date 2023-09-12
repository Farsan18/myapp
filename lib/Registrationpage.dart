import 'package:flutter/material.dart';
import 'package:myapp/homepage.dart';

class Registrationpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: Form(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(12.0),
            child: TextField(
             decoration: InputDecoration(border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30)),
              hintText: "username",
              helperText: "must an email",
              labelText: "username",
              prefixIcon: const Icon(Icons.person)
              ),
          ),
          ),
            const Padding(
            padding: EdgeInsets.all(12.0),
          child: TextField(
            obscureText: true,
            obscuringCharacter: "*",
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "password",
              helperText: "6 charachter required",
              labelText: "Password",
              prefixIcon: Icon(Icons.visibility_off_sharp)
            ),
          ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
          child: TextField(
            obscureText: true,
            obscuringCharacter: "*",
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "confirm password",
              helperText: "6 charachter required",
              labelText: "Password",
              prefixIcon: Icon(Icons.visibility_off_sharp)
            ),
          ),
          ),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => homepage()));
          },    
            child: const Text("Singn up")),
            TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Registrationpage()));
          }, 
          child: const Text("Already have an account"))
          ],
        )
      ),
    );
  }
}