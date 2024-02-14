import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pulsce_app/app/pages/todo_page/controllers/todo_page_controller.dart';

class ToDoPageView extends StatefulWidget {
  const ToDoPageView({super.key});

  @override
  State<ToDoPageView> createState() => _ToDoPageViewState();
}

class _ToDoPageViewState extends State<ToDoPageView> {
  var NotifyHelper;

  @override
  void initState() {
    super.initState();
    // NotifyHelper = NotifyHelper();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    // Text(DateFormat.yMMMMd().format(DateTime.now())),
                    Center(child: Text("Today"))
                  ],
                ),
              ),
            ],
          ),
        ],
      )
    );
  }

  _appBar() {
    return AppBar(
      title: Text("Task List"),
      leading: GestureDetector(
        onTap: () {
          ToDoPageController().switchTheme();
        },
        child: Icon(Icons.nightlight_round, size: 20, color: Colors.white),
      ),
    );
  }
}
