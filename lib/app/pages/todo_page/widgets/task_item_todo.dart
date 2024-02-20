import 'package:flutter/material.dart';
import 'package:pulsce_app/service/themes/color_themes.dart';
import 'package:pulsce_app/service/themes/default_themes.dart';
import 'package:pulsce_app/service/themes/text_style_themes/todo_page_themes.dart';

class TaskItemTodo extends StatelessWidget {
  final String title;
  final String subTitle;
  const TaskItemTodo({Key? key, required this.title, required this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: sizeHeight * 0.01),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: ColorResources.todoBlueColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TitleTodo),
          Row(
            children: [
              Icon(Icons.access_time, color: ColorResources.whiteColor),
              Text("9:07 PM - 9:59 PM", style: deadlineTodo),
            ],
          ),
          Text(subTitle, style: SubTitleTodo),
        ],
      ),
    );
  }
}
