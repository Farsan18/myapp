import 'package:flutter/material.dart';

class gridview3 extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 4,
      children: List.generate(15, (index) => Container(
         child: Image.asset("assets/images/farsan"),)),
      ),
    );
  }
}
