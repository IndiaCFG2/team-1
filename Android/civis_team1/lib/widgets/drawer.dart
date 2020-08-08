import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DrawerUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Hello User..'),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: (){
                  FirebaseAuth.instance.signOut();
                },
                child: ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
