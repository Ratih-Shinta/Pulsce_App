import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsce_app/app/pages/todo_page/widgets/input_field.dart';
import 'package:pulsce_app/app/routes/app_pages.dart';
import 'package:pulsce_app/service/themes/color_themes.dart';
import 'package:pulsce_app/service/themes/default_themes.dart';
import 'package:pulsce_app/service/themes/text_style_themes/todo_page_themes.dart';

class InputTodo extends StatelessWidget {
  // const InputTodo({super.key});
  DateTime dateTime = DateTime(3000, 2, 1);
  String dropdownRemind = "one";
  String dropdownRepeat = "ei";
  TimeOfDay selectedTime = TimeOfDay.now();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController noteController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timesRemindController = TextEditingController();
  final TextEditingController clockRemindController = TextEditingController();
  final TextEditingController repeatController = TextEditingController();

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
                controller: titleController,
              ),
              CustomTextField(labelText: 'Note', controller: noteController),
              CustomTextField(
                  labelText: 'Date',
                  showWidget: true,
                  controller: dateController,
                  widget: CupertinoButton(
                      onPressed: () {
                        showCupertinoModalPopup(
                            context: context,
                            builder: (BuildContext context) => SizedBox(
                                  height: 250,
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: ColorResources.whiteColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: CupertinoDatePicker(
                                        initialDateTime: dateTime,
                                        onDateTimeChanged: (DateTime newTime) {
                                          dateTime = newTime;
                                        },
                                        use24hFormat: true,
                                        mode: CupertinoDatePickerMode.date),
                                  ),
                                ));
                        dateController.text =
                            ("${dateTime.day}/${dateTime.month}/${dateTime.year}");
                      },
                      child: Icon(
                        Icons.calendar_month,
                        color: Colors.grey,
                      ))),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                        controller: timesRemindController,
                        labelText: 'Remind',
                        showWidget: true,
                        widget: DropdownButton<String>(
                          value: dropdownRemind,
                          icon: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.grey,
                            size: 30,
                          ),
                          style: timelineTodo,
                          onChanged: (String? newRemind) {
                            dropdownRemind = newRemind!;
                          },
                          items: const [
                            DropdownMenuItem<String>(
                              value: "one",
                              child: Text(
                                "one",
                                style:
                                    TextStyle(color: ColorResources.blackColor),
                              ),
                            ),
                            DropdownMenuItem<String>(
                                value: "two",
                                child: Text("two",
                                    style: TextStyle(
                                        color: ColorResources.blackColor))),
                            DropdownMenuItem<String>(
                              value: "three",
                              child: Text("three",
                                  style: TextStyle(
                                      color: ColorResources.blackColor)),
                            )
                          ],
                        )),
                  ),
                  Expanded(
                    child: CustomTextField(
                        controller: clockRemindController,
                        labelText: '',
                        showWidget: true,
                        widget: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            elevation: 0,
                          ),
                          child: Icon(
                            Icons.access_time,
                            color: Colors.grey,
                            size: 25,
                          ),
                          onPressed: () async {
                            final TimeOfDay? timeOfDay = await showTimePicker(
                              context: context,
                              initialTime: selectedTime,
                              initialEntryMode: TimePickerEntryMode.dial,
                            );
                            if (timeOfDay != null) {
                              selectedTime = timeOfDay;
                              clockRemindController.text =
                                  ("${selectedTime.hour}:${selectedTime.minute}");
                            }
                          },
                        )),
                  ),
                ],
              ),
              CustomTextField(
                  controller: repeatController,
                  labelText: 'Repeat',
                  showWidget: true,
                  widget: DropdownButton<String>(
                    value: dropdownRepeat,
                    icon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.grey,
                      size: 30,
                    ),
                    style: timelineTodo,
                    onChanged: (String? newRepeat) {
                      dropdownRepeat = newRepeat!;
                    },
                    items: const [
                      DropdownMenuItem<String>(
                        value: "ei",
                        child: Text("ei",
                            style: TextStyle(color: ColorResources.blackColor)),
                      ),
                      DropdownMenuItem<String>(
                        value: "bi",
                        child: Text("bi",
                            style: TextStyle(color: ColorResources.blackColor)),
                      ),
                      DropdownMenuItem<String>(
                        value: "ci",
                        child: Text("ci",
                            style: TextStyle(color: ColorResources.blackColor)),
                      )
                    ],
                  )),
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
