import 'package:flutter/material.dart';
import 'package:flutter_demo/core/resources/colour.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
      width: 20,
      child: Center(
        child: CircularProgressIndicator(
          color: Colour.white,
        ),
      ),
    );
  }
}
