import 'package:flutter/material.dart';
import 'package:flutter_demo/core/resources/colour.dart';
import 'package:flutter_demo/core/resources/font.dart';

final ThemeData theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colour.primary,
  ),
  fontFamily: Font.mada,
  useMaterial3: true,
);
