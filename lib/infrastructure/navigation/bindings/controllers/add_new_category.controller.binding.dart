import 'package:get/get.dart';

import '../../../../presentation/add_new_category/controllers/add_new_category.controller.dart';

class AddNewCategoryControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddNewCategoryController>(
      () => AddNewCategoryController(),
    );
  }
}
