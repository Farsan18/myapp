import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: bottomdependencies(),
  ));
}

class bottomdependencies extends StatefulWidget{
  @override
  State<bottomdependencies> createState() => _bottomdependenciesState();
}

class _bottomdependenciesState extends State<bottomdependencies> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Dependencies"),
      ),
      bottomNavigationBar: ConvexAppBar(
        onTap:(tapindex){
          setState((){
            index = tapindex;
          });
        },
        backgroundColor: Colors.blue,
        style: TabStyle.react,
        items:const [
            TabItem(icon: Icon(Icons.contacts)),
            TabItem(icon: Icon(Icons.search)),
            TabItem(icon: Icon(Icons.add_box_rounded)),
            TabItem(icon: Icon(Icons.home)),
        ],
      ),
    );
  }
}