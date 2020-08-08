import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SentimentApi with ChangeNotifier{
  String feedback;
  Float positive;
  Float negative;
  Float neutral;

  Future<void> sentimentApi(String message) async{
    try{
      final response = await http.post('http://18.197.5.99:5000/',
      headers: {
        'Content-Type':'application/json'
      },
    body: json.encode({
      'message':message
    }));
    print("api response------------");
    print(json.decode(response.body));
    }
    catch(error){
      print(error);
    }
    
    notifyListeners();
  }
}