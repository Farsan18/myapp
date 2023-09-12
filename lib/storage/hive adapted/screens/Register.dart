import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:myapp/storage/hive%20adapted/screens/Login.dart';
import '../database/hiveDb.dart';
import '../model/user_model.dart';
import 'Login.dart';

void main() async {
  Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox('userdata');
  runApp(
    GetMaterialApp(home: HiveRegistration()));
}

class HiveRegistration extends StatelessWidget { 
  final hemail = TextEditingController();
  final hpass = TextEditingController();
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hive Registration"),
      ),
      body: Column(
        children: [
          TextField(
            controller: hemail,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Email'
            ),
          ),
          TextField(
            controller: hpass,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Password'
            ),
          ),
          ElevatedButton(onPressed: () async{
            final regUserList = await HiveDb.instance.getUser();
            validateRegistratin(regUserList);
            hemail.text="";
            hpass.text="";
          },child: const Text('Register Here'))
        ],
      ),
    );
  }
  void validateRegistratin(List<User> regUserList) async{
    final eemail = hemail.text.trim();
    final epwd = hpass.text.trim();
    bool userFound = false;
    final validateEmail = EmailValidator.validate(eemail);
    if(eemail != "" && epwd != ""){
      if(validateEmail == true){
        await Future.forEach(regUserList, (userfromhive){
          if(userfromhive.email == eemail){
            userFound = true;
          }else{
            userFound = false;
          }
      });
      if(userFound == true){
        Get.snackbar("Error","User already Exist",colorText:Colors.red);
      }else{
        final pwdvalidation = checkPassword(epwd);
        if(pwdvalidation == true){
          final user = User(email: eemail, password: epwd);
          await HiveDb.instance.addUser(user);
          Get.to(HiveLoginPage());
          Get.snackbar("Sucess","Registartion Completed", colorText: Colors.green);
        }
      }
    }else{
      Get.snackbar("Error","Enter a valid Email", colorText: Colors.red);
    }
  }else{
    Get.snackbar("Error", "Field Must not be Empty", colorText: Colors.red);
  }
}
bool checkPassword(String epwd){
  if(epwd.length < 6){
    Get.snackbar("Errror","Password length shorter", colorText: Colors.red);
    return false;
  }else{
    return true;
  }
}
}