import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_demo/core/extensions/context_extension.dart';
import 'package:flutter_demo/core/resources/colour.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 30,
            sigmaY: 30,
          ),
          child: Container(
            width: 116,
            height: 116,
            decoration: BoxDecoration(
              color: Colour.white.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 58,
              backgroundColor: Colour.transparent,
              foregroundColor: context.colorScheme.onPrimary,
              child: const Icon(
                Icons.person_add_alt_1,
                size: 36,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
