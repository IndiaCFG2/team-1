import 'package:civis_team1/screens/AuthScreen.dart';
import 'package:civis_team1/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'dart:async';


class ConfirmationScreen extends StatefulWidget {
  static const routeName = '/Confirmation';
  final String status;
  ConfirmationScreen({
    @required this.status,
  }) : assert(status != null);
  @override
  _ConfirmationScreenState createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  String animationName = "Build";

  void popConfirmScreenTimer() {
    Timer _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      Navigator.popUntil(context, ModalRoute.withName('/policydetails'));
      timer.cancel();
    });
  }

  @override
  void initState() {
    popConfirmScreenTimer();
    super.initState();
   
  }

  @override
  Widget build(BuildContext context) {
    print("entering conformation screen");
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      // appBar: AppBar(title: Text("Confirmation")),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: widget.status == "success"
              ? FlareActor(
                  'assets/images/success.flr',
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                  animation: "success",
                )
              : FlareActor(
                  'assets/images/fail_icon.flr',
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                  animation: "pop",
                ),
        ),
      ),
    );
  }
}