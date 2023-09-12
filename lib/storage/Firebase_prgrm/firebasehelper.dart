import 'package:firebase_auth/firebase_auth.dart';

class FireHelper{
  final FirebaseAuth auth = FirebaseAuth.instance;
  get user => auth.currentUser;

  
}