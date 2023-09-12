import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  home: months()
  ));
}
class months extends StatelessWidget {
  var names=["January","February","March","April","May","June","July","August",
"September","October","November","December"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context,index){
        return Card(
          elevation: 5,
          child: Text(names[index]),
        );
  },
    separatorBuilder: (context,index){
    if(index%4==0){
    return const Card(
      elevation: 5,
    color: Colors.red,
    child: Text("Advertisement",style: TextStyle(color: Colors.white),));
    }
    return Text(" ");
    },
    itemCount: names.length)
    );
  }
}