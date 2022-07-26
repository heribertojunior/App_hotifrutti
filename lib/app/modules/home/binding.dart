import 'package:app_hortifrutti_pratico/app/modules/home/controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  //binding conecta a view ao controller
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
