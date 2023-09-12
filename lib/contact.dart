import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: contact(),
  ));
}

class contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Contact")),
      body: ListView(
        children: [
          const Center(
            child: Text("Contacts"),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(leading: Image.asset("assets/icons/user.png"),
            title: Text("Darsana"),
            subtitle: Text("MIssed Call",style: TextStyle(color: Color.fromARGB(255, 255, 17, 0))),
            trailing: Icon(Icons.phone_callback),),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(leading: Image.asset("assets/icons/user.png"),
            title: Text("Nithin"),
            subtitle: Text("4 Missed Call",style: TextStyle(color: Color.fromARGB(255, 255, 17, 0))),
            trailing: Icon(Icons.phone_callback),),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(leading: Image.asset("assets/icons/user.png"),
            title: Text("Rahul"),
            subtitle: Text("3 Missed Call",style: TextStyle(color: Color.fromARGB(255, 255, 17, 0))),
            trailing: Icon(Icons.phone_callback),),
          ),
        ],
      ),
    );
  }
}