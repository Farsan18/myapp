import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/home.dart';
import 'package:myapp/assignment1.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstPage(),
  ));
}

class Splashscreen extends StatefulWidget{
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}


class _SplashscreenState extends State<Splashscreen> {
  void iniState(){
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Assignment1()));
     });
     super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/image/bg1.jpg")
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/moon.png",
              height: 200,
              width: 200,
              ),
              Text(
                "Moon Lover",
                style: GoogleFonts.pacifico(
                  fontSize: 50,
                  color: Colors.blue
                ),)
            ],
          ),
        ),
      ),
    );
  }
}