import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ContextExtension on BuildContext {
  ResponsiveWrapperData get responsive => ResponsiveWrapper.of(this);
  AppLocalizations? get tr => AppLocalizations.of(this);
  ThemeData get theme => Theme.of(this);
}
