import 'package:flutter/cupertino.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

extension ContextExtension on BuildContext {
  ResponsiveWrapperData get responsive => ResponsiveWrapper.of(this);
}
