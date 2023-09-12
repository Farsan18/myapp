import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      backgroundColor: Colors.teal,

      /* appBar: AppBar(
        // centerTitle: true,
        title: const Text(
          "Rebirth", 
          style: TextStyle(fontSize: 30, color: Colors.greenAccent),
          ),
          ),*/
    

    // multichild widget
    body: Container(
      // color: Colors.white10,
      decoration: const BoxDecoration(
        // image: DecorationImage(
        //   fit: BoxFit.fill,
        //   image: AssetImage("assets/image/bg1.jpg")
       // image: NetworkImage("https://images.unsplash.com/photo-1527842891421-42eec6e703ea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bW9vbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60")
      gradient: LinearGradient(
        colors:[
        Colors.green,
        Colors.lightGreen,
        Colors.lightGreenAccent,
        Colors.lime
      ],)),
      child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon(Icons.traffic_rounded,color: Colors.blue,size: 125,),
          Image.asset("assets/icons/moon.png"),
          // Image.network(),
          const Text("Selenophile",style: TextStyle(fontSize: 25),),
        ],
      ),
    )
  ));
  }
}
    /// single child
//     body: Center(
//       child: Icon(Icons.lan, 
//     size: 125,
//      color: Colors.blue,)),
//     );
//   }
// }