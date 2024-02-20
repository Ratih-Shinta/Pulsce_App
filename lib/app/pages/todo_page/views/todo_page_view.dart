import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:pulsce_app/app/pages/todo_page/widgets/add_task_button_todo.dart';
import 'package:pulsce_app/app/pages/todo_page/widgets/task_item_todo.dart';
import 'package:pulsce_app/service/themes/color_themes.dart';
import 'package:pulsce_app/service/themes/default_themes.dart';
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
      backgroundColor: ColorResources.primaryColor,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: ColorResources.primaryColor,
          ),
          padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.03),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back!", style: navbarTitleTodo),
                Text("Jessie Marino", style: navbarNameTodo),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.03),
              decoration: BoxDecoration(
                color: ColorResources.secondaryColor,
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
            SizedBox(height: sizeHeight * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Your Timeline",
                  style: cheapTimelineTodo,
                ),
                Row(
                  children: [
                    Text(
                      'June',
                      style: timelineTodo,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: ColorResources.blackColor,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: sizeHeight * 0.01),
            Container(
              // color: ColorResources.secondaryColor,
              child: DatePicker(
                DateTime.now(),
                height: sizeHeight * 0.1,
                width: sizeWidth * 0.13,
                initialSelectedDate: DateTime.now(),
                selectionColor: ColorResources.accentColor,
                selectedTextColor: ColorResources.primaryColor,
                dateTextStyle: timelineTodo,
                dayTextStyle: timelineTodo,
                monthTextStyle: timelineTodo,
                onDateChange: (date) {
                  setState(() {
                    _selectedValue = date;
                  });
                },
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.only(top: 20, left: 20),
            //   child: Text(
            //     "Selected Date: ${DateFormat('yyyy-MM-dd').format(_selectedValue)}",
            //     style: TextStyle(fontSize: 16),
            //   ),
            // ),
            SizedBox(height: sizeHeight * 0.04),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      child: ListView(
                        children: [
                          TaskItemTodo(
                            title: 'web DEV',
                            subTitle:
                                'We have to learn laravel and do the laravel task of creating CRUD and relate...',
                          ),
                          TaskItemTodo(
                            title: 'Task 2',
                            subTitle:
                                'We have to learn laravel and do the laravel task of creating CRUD and relate...',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:
          AddTaskButtonTodo(), // Tambahkan tombol "Add Task" di sini
    );
  }
}
