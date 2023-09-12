import 'package:flutter/material.dart';
import 'package:myapp/loginpage.dart';

class registration extends StatefulWidget{
  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  

  final formkey = GlobalKey<FormState>();
  var confirmpass;
  bool showpswd = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statful Registration'),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            const Text("Registration Page", 
            style: TextStyle(fontSize: 30),),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration:  const InputDecoration(
                border: OutlineInputBorder(), hintText: "Username"
              ),
              validator: (email){
                if (email!.isEmpty || !email.contains('@')){
                  return "Enter valid mail / field must not be empty";
                }else {
                  return null;
                }
              },
            ),
            ),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child:TextFormField(
              textInputAction: TextInputAction.next,
              obscureText: showpswd,
              obscuringCharacter: '*',
              decoration:  InputDecoration(
                suffixIcon: IconButton(
                  onPressed: (){
                  setState(() {
                    if(showpswd){
                      showpswd = false;
                    }else{
                      showpswd = true;
                    }
                  });
                }, 
                icon: Icon(showpswd == true
                ? Icons.visibility 
                : Icons.visibility_off_sharp)),
                
                border: OutlineInputBorder(), hintText: "Password"
              ),
              validator: (password){
                confirmpass = password;
                if(password!.isEmpty || password.length < 6){
                  return "password length should be greaterthan 6 / not be empty";
                }else{
                  return null;
                }
              },
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: showpswd,
              obscuringCharacter: '*',
              decoration:  InputDecoration(
                suffixIcon: IconButton(
                  onPressed: (){
                  setState(() {
                     if(showpswd){
                      showpswd = false;
                    }else{
                      showpswd = true;
                    }
                  });
                }, 
                icon: Icon(showpswd == true ? Icons.visibility
                : Icons.visibility_off_sharp)),
                border: OutlineInputBorder(), hintText: "confirm password"
              ),
              validator: (cpassword){
                if(cpassword != confirmpass || cpassword!.length < 6){
                  return "password length should be greaterthan 6";
                }else {
                  return null;
                }
              },
            ),
            ),
            ElevatedButton(
              onPressed: (){
              var isvalid = formkey.currentState!.validate();
              if(isvalid == true){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => loginpage()));
              }
            }, 
            child: const Text("Sign up"))
          ],
        )
      ),
    );
  }
}