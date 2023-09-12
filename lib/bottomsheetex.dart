import 'package:flutter/material.dart';

// to perform event of gestures we use GESTURE DETECTOR or INKWELL 

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: bottomsheetex(),
  ));
}
class bottomsheetex extends StatelessWidget { 
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onDoubleTap: (){
            showSheet(context);
          },
          child: Image.asset("assets/image/dq.png")),
      ),
    );
  }
  
  void showSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
            ListTile(
              leading: Icon(Icons.copy),
              title: Text("Copy"),
            ),
          ],
        ),
      );
    });
  }
}