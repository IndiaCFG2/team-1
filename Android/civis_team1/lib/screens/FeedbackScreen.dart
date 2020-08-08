import 'package:civis_team1/widgets/ObjectiveForm.dart';
import 'package:civis_team1/widgets/SubjectiveForm.dart';
import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  static const routeName = 'feedback';
  @override
  Widget build(BuildContext context) {
    Map<String,Object> selected=ModalRoute.of(context).settings.arguments;
    String selectedId = selected['selectedPolicy'];
    print(selectedId);
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Feedback'),
            bottom: TabBar(
              isScrollable: true,
              tabs: [Tab(text: 'Subjective'), Tab(text: 'Objective')],
            ),
          ),
          body: TabBarView(children: [
            SubjectiveForm(selectedId),
            ObjectiveForm(),
          ]),
        ),
    );
  }
}
