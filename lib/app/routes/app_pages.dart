import 'package:get/get.dart';
import 'package:pulsce_app/app/pages/splash_page/binding/splash_binding.dart';
import 'package:pulsce_app/app/pages/splash_page/view/splash_view.dart';
import 'package:pulsce_app/app/pages/todo_page/bindings/todo_page_binding.dart';
import 'package:pulsce_app/app/pages/todo_page/views/input_todo_page.dart';
import 'package:pulsce_app/app/pages/todo_page/views/todo_page_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TODO_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.TODO_PAGE,
      page: () => ToDoPageView(),
      transition: Transition.fadeIn,
      binding: ToDoPageBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreen(),
      transition: Transition.fadeIn,
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ADD_TASK_TODO_PAGE,
      page: () => InputToDo(),
      transition: Transition.fadeIn,
      binding: ToDoPageBinding(),
    )
  ];
}
