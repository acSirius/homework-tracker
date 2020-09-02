import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:homework_tracker/const.dart';
//import 'package:homework_tracker/tasks.dart';
import 'InputTask.dart';

class TasksPage extends StatefulWidget {
  static String id = '/';

  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  List<Card> displayTasks() {
    List<Card> taskCards = [];
    for (int i = 0; i < tasksTitles.length; i++) {
      final String title = tasksTitles[i];
      final String subtitle = tasksDescriptions[i];

      var task = Card(
        elevation: 5,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ListTileTheme(
              iconColor: Colors.white,
              tileColor: kForegroundColor,
              contentPadding: EdgeInsets.fromLTRB(8, 1, 8, 8),
              child: ListTile(
                onTap: () {
                  // Can maybe use this to find the index to be removed
                  print(title + ' => ' + subtitle);
                },
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.book),
                ),
                title: Text('$title', style: kMainTextStyle),
                subtitle: Text('$subtitle',
                    style: kMainTextStyle.copyWith(fontSize: 12)),
              ),
            ),
          ],
        ),
      );

      taskCards.add(task);
    }

    return taskCards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        // automaticallyImplyLeading: false, // Todo: When app is further along, remove the comment. This removes the back button
        backgroundColor: kForegroundColor,
        centerTitle: true,
        title: Text(
          'Homework Tasks',
          style: kMainTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
        child: Column(
          children:
              //TODO 2: The added tasks should be displayed here
              //TODO 2.1
              displayTasks(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Go to task input');
          //displayTasks();
          Navigator.pushNamed(context, '/inputTask');
        },
        child: Icon(Icons.add),
        backgroundColor: kMainAccentColor,
        splashColor: kLighterAccentColor,
      ),
    );
  }
}
