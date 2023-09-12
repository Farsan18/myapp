import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gridview5(),
  ));
}
class gridview5 extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 70,
      //children: [],
      children: List.generate(10, 
      (index) => const Card(
        child: Center(
          child: Icon(Icons.account_balance,
          size: 30),
        ),
      )),),
    );
  }
}