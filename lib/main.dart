import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pulsce_app/app/pages/todo_page/controllers/todo_page_controller.dart';
import 'package:pulsce_app/app/routes/app_pages.dart';
import 'package:pulsce_app/service/themes/color_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pulsce',
      debugShowCheckedModeBanner: false,
      theme: ColorResources.light,
      darkTheme: ColorResources.dark,
      themeMode: ToDoPageController().theme,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
