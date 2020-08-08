import 'package:flutter/material.dart';

enum SingingCharacter { yes, no }

class ObjectiveForm extends StatefulWidget {
  @override
  _ObjectiveFormState createState() => _ObjectiveFormState();
}

class _ObjectiveFormState extends State<ObjectiveForm> {
  SingingCharacter _q1 = SingingCharacter.yes;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          margin: EdgeInsets.all(50),
          child: Column(
            children: [
            Card(
              color: Colors.red,
              child: Row(
                children: [
                  ListTile(
                    title: const Text('Lafayette'),
                    leading: Radio(
                      value: SingingCharacter.yes,
                      groupValue: _q1,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _q1 = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Lafayette'),
                    leading: Radio(
                      value: SingingCharacter.yes,
                      groupValue: _q1,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _q1 = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ])),
    );
  }
}
