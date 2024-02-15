import 'package:get/get.dart';
import 'package:pulsce_app/app/pages/splash_page/controller/splash_controller.dart';

class SplashBinding extends Bindings {
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
