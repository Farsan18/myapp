import 'package:flutter/material.dart';

class gridview1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount (crossAxisCount: 3),
        children:List.generate(10,(index)=> Card(child:Center(
          child:Image.asset("assets/icons/apple"),
        ),
        )),
      )
    );
  }

}