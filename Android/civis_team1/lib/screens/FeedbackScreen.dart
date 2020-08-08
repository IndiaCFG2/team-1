import 'package:civis_team1/widgets/ObjectiveForm.dart';
import 'package:civis_team1/widgets/SubjectiveForm.dart';
import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            SubjectiveForm(),
            ObjectiveForm(),
          ]),
        ),
    );
  }
}
