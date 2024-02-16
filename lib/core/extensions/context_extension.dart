import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;

  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get size => mediaQuery.size;
  double get width => size.width;
  double get height => size.height;

  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    SnackBar snackBar,
  ) {
    return scaffoldMessenger.showSnackBar(snackBar);
  }
  void clearSnackBars() => scaffoldMessenger.clearSnackBars();
}
