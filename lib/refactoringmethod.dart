import 'package:flutter/material.dart';

class refactormethod extends StatelessWidget { 
 
    
final Color? bgcolor;
  final Image? image;
  VoidCallback click;
  Widget? label;

  refactormethod({this.bgcolor,required this.label, this.image, required this.click});    
  
  
   @override
  Widget build(BuildContext context) {
     return Card(
      color: bgcolor,
      child: ListTile(
        leading: image,
        trailing: label,
        onTap: click,
      ),
    );
  }
}