import 'package:project_app/app/core/base/base_controller.dart';
import 'package:get/get.dart';

class ResumeController extends BaseController {
  var currentPage = "".obs;

  @override
  void onInit() {
    currentPage.value = "Home";
    super.onInit();
  }

  void goToPage(String page) {
    if (page == currentPage.value) return;
    currentPage.value = page;
  }
}
