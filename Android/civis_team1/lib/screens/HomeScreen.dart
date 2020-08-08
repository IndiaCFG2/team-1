import 'package:civis_team1/providers/fetchUser.dart';
import 'package:civis_team1/screens/PolicyDetailScreen.dart';
import 'package:civis_team1/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _userInstance = Firestore.instance;

  String uid;
  bool _isLoading = false;
  bool _isinit = true;
  DocumentSnapshot userFetched ;

  @override
  void didChangeDependencies() async {
    setState(() {
      _isLoading = true;
    });
    if (_isinit) {
      print("before calling fetch:");
      var user = Provider.of<FetchUser>(context, listen: false).fetchUser(uid);

      userFetched =Provider.of<FetchUser>(context, listen: false).userFetched;
      
      print(userFetched.data);
      setState(() {
        _isLoading = false;
      });
    }
    _isinit = false;
    super.didChangeDependencies();
  }

  // Widget for ListTile
  Widget buildListTile(index, title) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23,
        child: Text(
          index.toString(),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      title: Text(title),
      trailing: Icon(Icons.chevron_right),
    );
  }

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    
    // Provider.of<SentimentApi>(context,listen: false).sentimentApi("this is bad");
    // final userRegion =await Firestore.instance.collection('users').document(uid).get();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: DrawerUi(),
      body: 
      _isLoading?Center(child: Text('Loading....'),):
      Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: StreamBuilder(
            stream: Firestore.instance
                .collection('policies')
                .where('region', isEqualTo: 'telangana')
                .orderBy('timestamp', descending: true)
                .snapshots(),
            builder: (ctx, userSnapshot) {
              if (userSnapshot.connectionState == ConnectionState.waiting) {
                return Center(child: Text('Loading..'));
              }
              final document = userSnapshot.data.documents;
              if (document.length == 0) {
                return Center(
                  child: Text('Policies not added yet'),
                );
              }

              return ListView.builder(
                  itemCount: document.length,
                  itemBuilder: (context, index) {
                    print("doc ID:" + userSnapshot.toString());
                    DocumentSnapshot singleDoc = document[index];
                    print(singleDoc.documentID);
                    return Column(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(PolicyDetailScreen.routeName);
                          },
                          child: buildListTile(
                            index + 1,
                            document[index]['title'],
                          ),
                        ),
                        Divider()
                      ],
                    );
                    // Text('hai');
                  });
            },
          ),
        ),
      ),
    );
  }
}
