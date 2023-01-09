import 'package:project_app/app/core/base/base_controller.dart';
import 'package:get/get.dart';
import 'package:project_app/ui/screens/admin/views/constructor/performance/screen.dart';

class AdminController extends BaseController {
  var currentPage = "".obs;

  @override
  void onInit() {
    // currentPage.value = "Home";
    currentPage.value = ConstructorView.name;
    super.onInit();
  }

  void goToPage(String page) {
    if (page == currentPage.value) return;
    currentPage.value = page;
  }
}
