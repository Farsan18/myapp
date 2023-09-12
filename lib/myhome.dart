import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
    home: myhome(),
  ));
}

class myhome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Home"),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 10,),
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context){
            return [
              PopupMenuItem(child: Text("Payment")),
              PopupMenuItem(child: Text("Settings")),
            ];
          })
        ],
        ),
      body: ListView(
        children: const [
          Center(child: Text("Fruits",
          style: TextStyle(fontSize: 80,color: Colors.green),)),
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/apple.png")),
            title: Text("Apple"),
            subtitle: Text("\$200"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite),
                SizedBox(width: 10,),
                Icon(Icons.shopping_cart),
              ],
            )),
          ),
          Card(
            child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/mango.png")),
            title: Text("Mango"),
            subtitle: Text("\$150"),
            trailing: Wrap(
              children: [
                 Icon(Icons.favorite),
                 Icon(Icons.shopping_cart),
                 ]),),
          ),
          Card(
            child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/orange.png")),
            title: Text("Orange"),
            subtitle: Text("\$100"),
            trailing: Icon(Icons.shopping_cart),),
          ),
          Card(
            child: ListTile
            (leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/grapes.png")),
            title: Text("Grapes"),
            subtitle: Text("\$80"),
            trailing: Icon(Icons.shopping_cart),),
          ),
        ],
      ),
    );
  }
}