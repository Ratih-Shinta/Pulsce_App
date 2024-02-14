import 'package:get/get.dart';
import 'package:pulsce_app/app/pages/todo_page/controllers/todo_page_controller.dart';

class ToDoPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ToDoPageController>(
       ToDoPageController(),
    );
  }
}
