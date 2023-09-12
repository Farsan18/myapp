import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: drawerEx(),
  ));
}
class drawerEx extends StatelessWidget { 
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu")),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.black),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/bg1.jpg"))
                ),
                accountName: const Text("Farsan"), 
                accountEmail: const Text("farsan18@gmail.com"),
                currentAccountPicture: Image.asset("assets/image/dq.png"),
                otherAccountsPictures: [Image.asset("assets/icons/moon.png")],
                ),
                const ListTile(leading: Icon(Icons.home,color: Colors.white,),
                title: Text("Home", style: TextStyle(color: Colors.greenAccent),),),
                const ListTile(leading: Icon(Icons.favorite,color: Colors.white,),
                title: Text("Liked", style: TextStyle(color: Colors.greenAccent),),),
                const ListTile(leading: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                title: Text("Cart", style: TextStyle(color: Colors.greenAccent),),),
                const ListTile(leading: Icon(Icons.logout,color: Colors.white,),
                title: Text("Log Out", style: TextStyle(color: Colors.greenAccent),),),
            ],
          ),
        ),
      ),
    );
  }
}
