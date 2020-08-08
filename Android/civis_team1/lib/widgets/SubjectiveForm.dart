import 'package:civis_team1/providers/sentimentApi.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SubjectiveForm extends StatelessWidget {

  String id;
  SubjectiveForm(this.id);

  final _formKey = GlobalKey<FormState>();
  var _feedback = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
          child: Form(
            key: _formKey,
            child: TextFormField(
              maxLines: 10,
              cursorColor: Theme.of(context).cursorColor,
              maxLength: 70,
              decoration: InputDecoration(
                labelText: 'Feedback',
                helperText: 'max limit to 50 characters',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
              ),
              key: ValueKey('feedback'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'field shoudn\'t be empty';
                }
                return null;
              },
              onSaved: (value) {
                _feedback = value;
              },
            ),
          ),
        ),
        RaisedButton(
          child: Text('Submit'),
          onPressed: (){
            Provider.of<SentimentApi>(context).sentimentApi(_feedback,id);
        })
      ],
    );
  }
}
