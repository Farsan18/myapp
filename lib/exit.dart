import 'package:flutter/material.dart';

class SampleHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async{
      return await showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text("confirm exit"),
          content: Text("Do you really want to exit"),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop(true);
            },
            child: const Text("Yes")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);
            },
            child: const Text("No")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);
            },
            child: const Text("Cancel")),
          ]
        );
      });
    }
    return WillPopScope(onWillPop: showAlert, child: const Scaffold(
      body: Center(child: Text("back button to exit"),),
    ));
  }

}