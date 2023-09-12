import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: LoginFire(),));
}
class LoginFire extends StatefulWidget { 
   @override
  State<LoginFire> createState() => _LoginFireState();
}

class _LoginFireState extends State<LoginFire> {
  final email = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Padding(padding: EdgeInsets.all(10.0),
      
      child: Column(
        children: [ TextField(
          controller: email,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Email"
          ),
        ),
      ]),),      
    );
  }}
