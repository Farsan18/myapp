import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
    home: chat(),
  ));
}

class chat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WhatsApp"),
      actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 10,),
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context){
            return [
              PopupMenuItem(child: Text("New Group")),
              PopupMenuItem(child: Text("New Broadcast")),
              PopupMenuItem(child: Text("Starred Messages")),
              PopupMenuItem(child: Text("Payment")),
              PopupMenuItem(child: Text("Settings")),
            ];
          })
        ],
        ),
      body: ListView(
        children: [
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(leading: Image.asset("assets/image/bjt.png"),
            title: Text("Bijith"),
            subtitle: Wrap(
              children: [ 
                Text("Work undeda"),
              ]),
            trailing: Text("10:29 am"),),
          ),

          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(leading: Image.asset("assets/image/prithvi.png"),
            title: Text("Ashif"),
            subtitle: Wrap(
              children: [ 
                Icon(Icons.mic,color: Colors.blue,),
                Text("0:14"),
              ]),
            trailing: Text("Yestarday"),),
          ),

          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(leading: Image.asset("assets/image/airtel.png"),
            title: Row(children: [ Text("Airtel India"),
            Icon(Icons.verified_rounded,color: Colors.green),]),
            subtitle: Wrap(
              children: [ 
                Text("Grab 2GB Data Free"),
              ]),
            trailing: Text("05/07/2023"),),
          ),

          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(leading: Image.asset("assets/image/3.png"),
            title: Text("Troll Yamandanz"),
            subtitle: Wrap(
              children: [ 
                Icon(Icons.done_all,color: Colors.blue,),
                Text("Can you please check it...!!"),
              ]),
            trailing: Text("05/07/2023"),),
          ),

          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(leading: Image.asset("assets/image/chill.png"),
            title: Text("Chill 2.0"),
            subtitle: Wrap(
              children: [ 
                Text("Rahul:"),
                Icon(Icons.photo),
                Text("Photo"),
              ]),
            trailing: Wrap(
              direction: Axis.vertical,
              children: [ 
                Text("04/07/2023",style: TextStyle(color: Colors.green)),
                 CircleAvatar(
                  minRadius: 10,
                  maxRadius: 10,
                  backgroundColor: Colors.green,
                  child:
                Text("23")),
                ]),),
          ),

          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(leading: Image.asset("assets/image/farsan.png"),
            title: Text("Farsan (You)"),
            subtitle: Wrap(
              children: [ 
                Icon(Icons.done_all,color: Colors.blue,),
                Icon(Icons.video_camera_front_rounded),
                Text("Video"),
              ]),
            trailing: Text("23/06/2023"),),
          ),
        ],
      ),
    );
  }
}