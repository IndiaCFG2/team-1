import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';


class FetchUser with ChangeNotifier{
  var userFetched;
  Future<void> fetchUser(uid) async{
    var user =await Firestore.instance.collection('users').document(uid).get();
    print("provider for fetching user:--");
    userFetched=user;
    notifyListeners();
  }
}