import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Assignment1(),
  ));
}

class Assignment1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.none,
            image: AssetImage("assets/image/bg2.jpg"))
              
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/logo.png",
              height: 100,
              width: 100,
              ),
              Text("Fresh Fruits",
              style: GoogleFonts.gabriela(fontSize: 50,color: Colors.white),),
              Text("Tasty & Healthy",
              style: GoogleFonts.alata(fontSize: 25,color: Colors.white),),
            ],
          )
        ),
      ),
    );
  }
}