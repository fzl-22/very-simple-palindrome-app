import 'package:flutter/material.dart';
import 'package:flutter_demo/core/extensions/context_extension.dart';
import 'package:flutter_demo/core/resources/colour.dart';

SnackBar floatingSnackBar({
  required BuildContext context,
  required String content,
}) {
  return SnackBar(
    content: Text(
      content,
      style: context.textTheme.bodyMedium!.copyWith(
        color: context.colorScheme.onSurface,
      ),
    ),
    backgroundColor: Colour.white,
    behavior: SnackBarBehavior.floating,
    margin: const EdgeInsets.all(24),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    elevation: 10,
    dismissDirection: DismissDirection.horizontal,
  );
}
