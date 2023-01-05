import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:project_app/ui/global/base_website_layout.dart';
import 'controller.dart';

class ResumeScreen extends GetView<ResumeController> {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WebsiteLayoutBuilder<ResumeController>(
      page: "RESUME",
      builder: (context, screenType) {
        return SizedBox();
      },
      controller: ResumeController(),
    );
  }
}
