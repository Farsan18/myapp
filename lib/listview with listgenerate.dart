import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listviewgenerate(),
  ));
}

class listviewgenerate extends StatelessWidget{

  var names = [
    "Farsan",
    "Rahul",
    "Darsana",
    "Nithin",
    "Iqbal",
    "Bijith",
    "Ashif",
    "Chill",
    "Raoof",
    "Gulsar",
    "Abhinanth",
    "Burhan",
    "Deepu",
    "Raihan",
    "Rashid",
    "Niyas",
    "Rishad",
    "Ram",
    "Surya",
    "Sandra",
    "Ziyad",
  ];

  var images = [
    "assets/image/farsan.png",
    "assets/image/chill.png",
    "assets/image/bjt.png",
    "assets/image/dqsalmaan.png",
    "assets/image/prithvi.png",
    "assets/image/chill.png",
    "assets/image/bjt.png",
    "assets/image/dqsalmaan.png",
    "assets/image/prithvi.png",
    "assets/image/chill.png",
    "assets/image/bjt.png",
    "assets/image/dqsalmaan.png",
    "assets/image/prithvi.png",
    "assets/image/chill.png",
    "assets/image/bjt.png",
    "assets/image/dqsalmaan.png",
    "assets/image/prithvi.png",
    "assets/image/chill.png",
    "assets/image/bjt.png",
    "assets/image/dqsalmaan.png",
    "assets/image/prithvi.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Generate")
      ),
      body: ListView(
        children: List.generate(20,
        (index) => Card(
          child: ListTile(
            leading: Image.asset(images[index]),
            title: Text(names[index]),
            subtitle: Text("Oi"),
            trailing: Text("12:29"),
          )
        ))
      )
    );
  }
}