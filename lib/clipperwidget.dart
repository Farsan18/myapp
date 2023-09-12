import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: clipperwidget(),
  ));
}
class clipperwidget extends StatelessWidget { 
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Clipper"),),
      body: ListView(
        children: [
          ClipRect(
            child: Align(
              widthFactor: .6,
              heightFactor: .4,
                child: Image.asset("assets/image/dq.png"),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset("assets/icons/moon.png"),
          ),
          ClipOval(
            child: Image.asset("assets/image/dq.png"),
          ),
          ClipPath(
            clipper: MovieTicketClipper(),
            child: Container(
              height: 100,
              color: Colors.red,
              child: Center(child: Text("Farsan"),),
            ),
          ),
        ],
      ),
    );
  }
}
