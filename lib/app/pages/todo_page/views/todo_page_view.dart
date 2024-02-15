import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pulsce_app/app/pages/todo_page/controllers/todo_page_controller.dart';
import 'package:pulsce_app/service/themes/color_themes.dart';
import 'package:pulsce_app/service/themes/text_style_themes/todo_page_themes.dart';

class ToDoPageView extends StatefulWidget {
  const ToDoPageView({Key? key}) : super(key: key);

  @override
  State<ToDoPageView> createState() => _ToDoPageViewState();
}

class _ToDoPageViewState extends State<ToDoPageView> {
  DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome Back!", style: navbarTittleTodo),
                    Text("Jessie Marino", style: navbarNameTodo),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: 390,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: ColorResources.whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: searchTodo,
                border: InputBorder.none,
                icon: Icon(Icons.search, color: Colors.grey),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Your Timeline",
            style: timelineTodo,
          ),
          SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20),
            child: DatePicker(
              DateTime.now(),
              height: 100,
              width: 80,
              initialSelectedDate: DateTime.now(),
              selectionColor: ColorResources.primaryColor,
              selectedTextColor: ColorResources.whiteColor,
              dateTextStyle: DateTimelineTodo,
              dayTextStyle: DayTimelineTodo,
              monthTextStyle: MonthTimelineTodo,
              onDateChange: (date) {
                setState(() {
                  _selectedValue = date;
                });
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              "Selected Date: ${DateFormat('yyyy-MM-dd').format(_selectedValue)}",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                      ),
                      child: ListView(
                        children: <Widget>[
                          _buildTaskItem("Task 1"),
                          _buildTaskItem("Task 2"),
                        ],
                      ),
                    ),
                  ),
                  _buildAddTaskButton(), // Tambahkan tombol "Add Task" di sini
                ],
              ),
            ),
          ),
        ],
      ),
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

  Widget _buildTaskItem(String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }

  Widget _buildAddTaskButton() {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: InkWell(
        onTap: () {
          // Tambahkan logika untuk menambahkan tugas baru di sini
        },
        child: Container(
          margin: EdgeInsets.only(left: 300.0),
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
