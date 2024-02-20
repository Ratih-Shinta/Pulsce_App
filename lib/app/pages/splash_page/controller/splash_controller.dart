import 'package:get/get.dart';
import 'package:pulsce_app/app/routes/app_pages.dart';

class SplashController extends GetxController {
  Future splashScreen() async {
    Future.delayed(
      const Duration(seconds: 3), 
      () {
        Get.offAndToNamed(
          Routes.TODO_PAGE,
        );
      },
    );
  }

  @override
  void onInit() {
    super.onInit();
    splashScreen();
  }
}