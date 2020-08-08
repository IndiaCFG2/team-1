import 'package:flutter/material.dart';

class PolicyDetailScreen extends StatefulWidget {
  static const routeName='policydetails';
  @override
  _PolicyDetailScreenState createState() => _PolicyDetailScreenState();
}

class _PolicyDetailScreenState extends State<PolicyDetailScreen> {
  bool descTextShowFlag = true;
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              'Details of the policy will be displayed here',
              maxLines: descTextShowFlag ? 50 : 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 14,
              ),
            ),
            InkWell(
              onTap: (){ //to show full or minimal description of book
                setState(() {
                  descTextShowFlag = !descTextShowFlag;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  descTextShowFlag ? Text("Show Less",style: TextStyle(color: Colors.blue),) :  Text("Show More",style: TextStyle(color: Colors.blue))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 40),
              child: Text(
                'Response',
                style: TextStyle(color: Colors.white),
              ),
              //onPressed: function(),
              ),
          ]
        )
      ) ,
    );
    
   
  }
}
