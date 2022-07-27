import 'package:app_hortifrutti_pratico/app/modules/dashboard/controller.dart';
import 'package:get/get.dart';

import '../home/controller.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
