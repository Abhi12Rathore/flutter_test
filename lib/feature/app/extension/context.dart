import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension BuildContextExtension on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this);
  ThemeData get theme => Theme.of(this);
  IconThemeData get iconTheme => Theme.of(this).iconTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
}