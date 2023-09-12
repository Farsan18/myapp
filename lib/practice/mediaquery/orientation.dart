import 'package:flutter/material.dart';
import 'package:myapp/practice/apptheme.dart';
void main(){
  runApp(MaterialApp(
    home: Run(),
  ));
}
class Run extends StatelessWidget { 
  var orientation, height, width;
   @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.orientationOf(context);
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Name'),
      ),
      body: orientation == Orientation.portrait?
      Container(
        color: AppThemeColors.currentSection,
        height: height,
        width: width,
      )
      : Container(
        height: height,
        width: width,
      ),
    );
  }
}
