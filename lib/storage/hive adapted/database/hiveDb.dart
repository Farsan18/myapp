import 'package:hive/hive.dart';

import '../model/user_model.dart';

class HiveDb{

  HiveDb._internal();

  static HiveDb instance = HiveDb._internal();


  factory HiveDb(){
    return instance;
  }

  Future<List<User>> getUser() async{
    final db = await Hive.openBox<User>('UserData');
    return db.values.toList();
  }
  Future<void> addUser(User user) async{
    final db = await Hive.openBox<User>("user data");
    db.put(user.id, user);
  }
}