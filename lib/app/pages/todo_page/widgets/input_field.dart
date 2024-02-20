import 'package:flutter/material.dart';
import 'package:pulsce_app/service/themes/color_themes.dart';
import 'package:pulsce_app/service/themes/text_style_themes/todo_page_themes.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String? hint;
  final bool showWidget;
  final Widget? widget;

  const CustomTextField({
    Key? key,
    required this.labelText,
    this.hint,
    this.showWidget = true,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            textAlign: TextAlign.left,
            style: addTaskTitleTodo,
          ),
          SizedBox(height: 5),
          Stack(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: hint,
                  fillColor: ColorResources.whiteColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0), // Adjust horizontal padding here
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              if (showWidget)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Transform.translate(
                        offset: Offset(
                            4, 4),
                        child: widget,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(
            height: 20,
            width: 10,
          ),
        ],
      ),
    );
  }
}
