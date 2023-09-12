import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gridview4(),
  ));
}
class gridview4 extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
      childrenDelegate: SliverChildBuilderDelegate((context, index) => Card(child: Center(child: Text("Hello")))),
    ),
    );
  }
}
