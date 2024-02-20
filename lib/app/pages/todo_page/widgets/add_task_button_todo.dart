import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pulsce_app/app/routes/app_pages.dart';
import 'package:pulsce_app/service/themes/color_themes.dart';

class AddTaskButtonTodo extends StatelessWidget {
  const AddTaskButtonTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.ADD_TASK_TODO_PAGE);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20.0),
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorResources.secondaryColor,
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
    );
  }
}
