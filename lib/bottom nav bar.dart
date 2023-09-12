import 'package:flutter/material.dart';

import 'listview with listgenerate.dart';
import 'listview.builder.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
    home: BottomNavBar(),
  ));
}

class BottomNavBar extends StatefulWidget{
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;

  var screens = [listviewgenerate(),listview3(),listviewgenerate(),listview3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap:(tapindex){
          setState((){
            index = tapindex;
          });
        },
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
            BottomNavigationBarItem(icon: Icon(Icons.contacts),label: "contacts"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded),label: "view"),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        ]
      ),
      body: screens[index],
    );
  }
}