import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pulsce_app/app/pages/todo_page/widgets/input_field.dart';
import 'package:pulsce_app/app/routes/app_pages.dart';
import 'package:pulsce_app/service/themes/color_themes.dart';
import 'package:pulsce_app/service/themes/text_style_themes/todo_page_themes.dart';

class InputToDo extends StatefulWidget {
  const InputToDo({super.key});

  @override
  State<InputToDo> createState() => _InputToDoState();
}

class _InputToDoState extends State<InputToDo> {
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorResources.primaryColor,
        title: Text(
          "Add Task",
          style: addTaskTodo,
        ),
        leading: IconButton(
          onPressed: () => Get.offAllNamed(Routes.TODO_PAGE),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
            color: ColorResources.blackColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTextField(
                labelText: 'Title',
              ),
              CustomTextField(
                labelText: 'Note',
              ),
              CustomTextField(
                labelText: 'Date',
                showWidget: true,
                widget: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.calendar_month,
                      color: Colors.grey,
                    )),
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      labelText: 'Remind',
                      showWidget: true,
                      widget: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.grey,
                            size: 30,
                          )),
                    ),
                  ),
                  Expanded(
                    child: CustomTextField(
                      labelText: '',
                      showWidget: true,
                      widget: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.access_time,
                            color: Colors.grey,
                            size: 25,
                          )),
                    ),
                  ),
                ],
              ),
              CustomTextField(
                labelText: 'Repeat',
                showWidget: true,
                widget: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.grey,
                      size: 30,
                    )),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Color",
                          style: addTaskTitleTodo,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: List<Widget>.generate(6, (int index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: CircleAvatar(
                              radius: 22,
                              backgroundColor: index == 0
                                  ? ColorResources.todoPurpleColor
                                  : index == 1
                                      ? ColorResources.todoPinkColor
                                      : index == 2
                                          ? ColorResources.todoBlueColor
                                          : index == 3
                                              ? ColorResources.todoOrangeColor
                                              : index == 4
                                                  ? ColorResources.todoSageColor
                                                  : index == 5
                                                      ? ColorResources
                                                          .todoGriyyColor
                                                      : index == 6
                                                          ? ColorResources
                                                              .todoGreenColor
                                                          : ColorResources
                                                              .transparentColor,
                            ),
                          );
                        }),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Create Task tapped!');
                      },
                      child: Container(
                        height: 33,
                        width: 237,
                        decoration: BoxDecoration(
                          color: ColorResources.orangeColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            "Create Task",
                            style: addTaskTodo,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
