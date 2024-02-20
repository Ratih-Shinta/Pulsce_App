part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH_SCREEN = _Paths.SPLASH_SCREEN;
  static const TODO_PAGE = _Paths.TODO_PAGE;
  static const ADD_TASK_TODO_PAGE = _Paths.ADD_TASK_TODO_PAGE;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH_SCREEN = '/splash-screen';
  static const TODO_PAGE = '/todo-page';
  static const ADD_TASK_TODO_PAGE = '/add-task-todo-page';
}
