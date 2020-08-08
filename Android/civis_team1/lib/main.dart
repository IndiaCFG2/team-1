import 'package:civis_team1/providers/fetchUser.dart';
import 'package:civis_team1/providers/sentimentApi.dart';
import 'package:civis_team1/screens/AuthScreen.dart';
import 'package:civis_team1/screens/FeedbackScreen.dart';
import 'package:civis_team1/screens/HomeScreen.dart';
import 'package:civis_team1/screens/PolicyDetailScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
          ChangeNotifierProvider(create:(ctx) => SentimentApi(),),
          ChangeNotifierProvider(create:(ctx) => FetchUser(),),
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home:
        StreamBuilder(
            stream: FirebaseAuth.instance.onAuthStateChanged,
            builder: (ctx, userSnapshot) {
              if (userSnapshot.hasData) {
                return HomePage();
              }
              return AuthScreen();
            }),
        routes: {
          HomePage.routeName: (ctx) => HomePage(),
          PolicyDetailScreen.routeName: (ctx) => PolicyDetailScreen(),
          FeedbackScreen.routeName : (ctx) => FeedbackScreen()
        },
      ),
    );
  }
}
