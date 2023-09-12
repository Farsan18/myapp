import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:myapp/refactoringmethod.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: staggrid(),
  ));
}

class staggrid extends StatelessWidget { 
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Staggered Grid"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 1, 
              mainAxisCellCount: 2, 
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/image/dq.png")),
                ),
              )),
              StaggeredGridTile.count(
              crossAxisCellCount: 2, 
              mainAxisCellCount: 1, 
              child: refactormethod(
                label: Text("Hello"),
                 click: (){},
                 bgcolor: Colors.red,
                 image: Image.asset("assets/image/dq.png"),)),
          ],),
      ),
    );
  }
}
