import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: drawerExPractice(),
  ));
}
class drawerExPractice extends StatelessWidget { 
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu")),
      drawer: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.orangeAccent,
            Colors.orange,
            Colors.deepOrange
          ]),
        ),
        child: Drawer(
          child: ListView(
            children: [ListTile(
          title: const Text("Dulquer Salmaan"), 
          subtitle: const Text("dqsalmaan@gmail.com"),
          leading: Image.asset("assets/image/dqsalmaan.png"),
          ),
                ListTile(onTap:(){}, 
                leading: Icon(Icons.home,color: Colors.white,),
                title: Text("Home", style: TextStyle(color: Colors.white),),),
                const ListTile(leading: Icon(Icons.favorite,color: Colors.white,),
                title: Text("Liked", style: TextStyle(color: Colors.white),),),
                const ListTile(leading: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                title: Text("Cart", style: TextStyle(color: Colors.white),),),
                const ListTile(leading: Icon(Icons.logout,color: Colors.white,),
                title: Text("Log Out", style: TextStyle(color: Colors.white),),),
          ]),
        ),
        ),
      );
  }
}
