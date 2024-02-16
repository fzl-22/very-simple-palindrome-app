import 'package:flutter/material.dart';
import 'package:flutter_demo/core/common/themes/theme.dart';
import 'package:flutter_demo/core/router/router.dart';

void main() {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Demo App',
      theme: theme,
      debugShowCheckedModeBanner: false,
      routerConfig: routerConfig,
    );
  }
}
