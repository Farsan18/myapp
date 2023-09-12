import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:myapp/storage/hive%20adapted/database/hiveDb.dart';
import 'package:myapp/storage/hive%20adapted/screens/Register.dart';

import '../model/user_model.dart';
import 'Home.dart';

void main() async {
  Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox('userdata');
  runApp(
    GetMaterialApp(home: HiveLoginPage()));
}

class HiveLoginPage extends StatelessWidget { 
  final email = TextEditingController();
  final pass = TextEditingController();
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: 'Username'
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: pass,
              decoration: InputDecoration(
                hintText: "Password"
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () async{
              final usersList = await HiveDb.instance.getUser();
              checkUserExist(usersList);
            },
             child: Text("Login")),
             TextButton (onPressed: (){
              Get.to(HiveRegistration());
             }, child: Text("Not an user? Register Here...")),
          ],
        ),
      )
    );
  }
  Future<void> checkUserExist(List<User> userList) async{
    final lemail = email.text.trim();
    final lpass = pass.text.trim();

    bool userFound = false;

    if(lemail != '' && lpass != ''){
      await Future.forEach(userList, (regUserFromHive){
        if(lemail == regUserFromHive.email && lpass == regUserFromHive.password){
          userFound = false;
        }else{
          userFound = false;
        }
      });
      if(userFound == true){
        Get.offAll(()=>HiveHome(email : lemail));
      Get.snackbar("Sucecess", "Login Success $lemail", colorText: Colors.green);
      }else{
        Get.snackbar("Error", "No user Found ", colorText: Colors.red);
      }
    }else{
      Get.snackbar("Error", "Field Must be filled ", colorText: Colors.red);
    }
  }
}
