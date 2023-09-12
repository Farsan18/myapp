import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listview3(),
  ));
}

class listview3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List view Builder"),),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
            leading: Image.asset("assets/image/bjt.png"),
            title: Text("You"),
            subtitle: Text("Oi"),
            trailing: Text("12:29"),
          )
          );
   } 
   ),
  
    );
  }

}