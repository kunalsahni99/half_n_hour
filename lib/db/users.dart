import 'package:firebase_database/firebase_database.dart';

class UserServices{
  FirebaseDatabase _database = FirebaseDatabase.instance;
  String ref = "users";

  void createUser(String id, Map value){
    _database.reference().child("$ref/$id")
        .set(value)
        .catchError((e){
          print(e.toString());
        });
  }
}