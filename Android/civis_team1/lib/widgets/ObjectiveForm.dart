import 'package:flutter/material.dart';

enum SingingCharacter { yes, no }

class ObjectiveForm extends StatefulWidget {
  @override
  _ObjectiveFormState createState() => _ObjectiveFormState();
}

class _ObjectiveFormState extends State<ObjectiveForm> {
  SingingCharacter _q1 = SingingCharacter.yes;
  String radioButtonItem;
  int id1 = 0, id2 = 0, id3 = 0, id4 = 0, id5 = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text('1. Does this policy meet your expectations?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: id1,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'Yes';
                      id1 = 1;
                    });
                  },
                ),
                Text(
                  'Yes',
                  style: new TextStyle(fontSize: 17.0),
                ),

                Radio(
                  value: 2,
                  groupValue: id1,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'No';
                      id1 = 2;
                    });
                  },
                ),
                Text(
                  'No',
                  style: new TextStyle(
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('2. Does this policy have a positive impact on all age groups?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: id2,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'Yes';
                      id2 = 1;
                    });
                  },
                ),
                Text(
                  'Yes',
                  style: new TextStyle(fontSize: 17.0),
                ),

                Radio(
                  value: 2,
                  groupValue: id2,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'No';
                      id2 = 2;
                    });
                  },
                ),
                Text(
                  'No',
                  style: new TextStyle(
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('3. Does this policy support all financial classes?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: id3,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'Yes';
                      id3 = 1;
                    });
                  },
                ),
                Text(
                  'Yes',
                  style: new TextStyle(fontSize: 17.0),
                ),

                Radio(
                  value: 2,
                  groupValue: id3,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'No';
                      id3 = 2;
                    });
                  },
                ),
                Text(
                  'No',
                  style: new TextStyle(
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('4. Does the policy require any major modifications?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: id4,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'Yes';
                      id4 = 1;
                    });
                  },
                ),
                Text(
                  'Yes',
                  style: new TextStyle(fontSize: 17.0),
                ),

                Radio(
                  value: 2,
                  groupValue: id4,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'No';
                      id4 = 2;
                    });
                  },
                ),
                Text(
                  'No',
                  style: new TextStyle(
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('5. Does this policy cover all aspects of the problem it is addressing for?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: id5,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'Yes';
                      id5 = 1;
                    });
                  },
                ),
                Text(
                  'Yes',
                  style: new TextStyle(fontSize: 17.0),
                ),

                Radio(
                  value: 2,
                  groupValue: id5,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'No';
                      id5 = 2;
                    });
                  },
                ),
                Text(
                  'No',
                  style: new TextStyle(
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
