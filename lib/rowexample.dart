import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: rowexample(),
  ));
}

class rowexample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Image.asset("assets/icons/user.png"),
          Image.asset("assetsicons/apple.png"),
          Image.asset("assetsicons/orange.png"),
          Image.asset("assetsicons/mango.png"),
        ],
      ),
    );
  }

}