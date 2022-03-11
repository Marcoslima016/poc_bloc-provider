import 'package:get/get.dart';

import 'lib.imports.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AppController>(AppController(), permanent: true);
  }
}
