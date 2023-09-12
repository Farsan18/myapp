import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:myapp/loginpage.dart';
void main(){
  runApp(MaterialApp(
    home: OnBoarding(),
    debugShowCheckedModeBanner: false,
  ));
}
class OnBoarding extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = const PageDecoration(
      fullScreen: false,
      titleTextStyle: TextStyle(color: Colors.greenAccent,
      fontStyle: FontStyle.italic,
      fontSize: 30,
      fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(fontSize: 18,
    color: Colors.yellowAccent),
    imagePadding: EdgeInsets.all(20),
    boxDecoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        Colors.orangeAccent,
        Colors.orange,
        Colors.deepOrange,
      ],
      begin: Alignment.topRight,
      end: Alignment.bottomLeft),
    ),  
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          image: Align(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/image/bg1.jpg"),
          ),
          title: "First Page",
          body: "With Microsoft 365 for famillies , you can create , optimize , and collabrate , all in one place"
        ),
        PageViewModel(
          image: Align(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/image/bg1.jpg"),
          ),
          title: "Second Page",
          body: "With Microsoft 365 for famillies , you can create , optimize , and collabrate , all in one place"
        ),
        PageViewModel(
          image: Align(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/image/bg1.jpg"),
          ),
          title: "Third Page",
          body: "With Microsoft 365 for famillies , you can create , optimize , and collabrate , all in one place"
        ),
      ],
      onDone: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> loginpage())),
      onSkip: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> loginpage())),
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Text("Next"),
      done: const Text("Continue"),
      dotsDecorator: const DotsDecorator(size: Size(10, 10),
      color: Colors.black,
      activeSize: Size(15, 10),
      activeColor: Colors.blue,
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25),))),
    );
  }
}