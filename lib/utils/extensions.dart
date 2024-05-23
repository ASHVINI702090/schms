




import 'dart:io';
import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {

  MediaQueryData get media => MediaQuery.of(this);

  ThemeData get theme => Theme.of(this);
  TextTheme get style => theme.textTheme;
  ColorScheme get scheme => theme.colorScheme;
  // CustomColors get colors => theme.extension<CustomColors>()!;

  void error(Object e) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          e is SocketException ? "No internet connection!" : "$e",
          style: style.bodyLarge!.copyWith(
            color: scheme.errorContainer,
          ),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: scheme.onErrorContainer,
      ),
    );
  }

  void message(Object e) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          "$e",
          style: style.bodyLarge!.copyWith(
            color: scheme.primaryContainer,
          ),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: scheme.onPrimaryContainer,
      ),
    );
  }



}
