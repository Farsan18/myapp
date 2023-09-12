import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: sliverEx(),
  ));
}
class sliverEx extends StatelessWidget { 
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              title: const Text("Black Box",style: TextStyle(color: Colors.greenAccent),),
              bottom: AppBar(
                elevation: 0,
                title: Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.white,
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt)
                    ),
                  ),
                ),
              ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 30,
                  (context, index) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    height: 80,
                    child: Text(style: const TextStyle(fontSize: 30),
                    "User $index"),
                  ))
              )
          ],
        ),
      ),
    );
  }
}
