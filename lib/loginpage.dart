import 'package:flutter/material.dart';
import 'package:myapp/Registrationpage.dart';
import 'package:myapp/homepage.dart';
import 'package:myapp/myhome.dart';
import 'package:myapp/registration.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: loginpage(), 
  ));
}

class loginpage extends StatelessWidget{

  String username = "abc@123";
  String password = 'abc123';

  final uname = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")
      ,),
      body: Column(
        children: [
          Image.asset("assets/icons/logo.png",
          height: 100,
          width: 100,),
          Padding(padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: uname,
            decoration: InputDecoration(border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30)),
              hintText: "username",
              helperText: "must an email",
              labelText: "username",
              prefixIcon: const Icon(Icons.person)
              ),
          ),
          ),
           Padding(
            padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: pass,
            obscureText: true,
            obscuringCharacter: "*",
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              hintText: "password",
              helperText: "6 charachter required",
              labelText: "Password",
              prefixIcon: const Icon(Icons.visibility_off_sharp)
            ),
          ),
          ),
          ElevatedButton(onPressed: (){
            if(uname.text == username && pass.text == password){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => myhome()));
            }else{
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Email/Password is incorrect"),
              backgroundColor: Colors.red,));
            }
          }, 
          child: const Text("Login")),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => registration()));
          }, 
          child: const Text("not an user"))
        ],
      ),
    );
  }
}