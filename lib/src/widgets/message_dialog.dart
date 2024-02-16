import 'package:flutter/material.dart';
import 'package:flutter_demo/core/extensions/context_extension.dart';
import 'package:go_router/go_router.dart';

AlertDialog messageDialog({
  required BuildContext context,
  required String message,
}) {
  return AlertDialog(
    title: const Text('Sukses!'),
    content: Text(message),
    actions: [
      TextButton(
        style: TextButton.styleFrom(
          textStyle: context.textTheme.labelLarge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          context.pop();
        },
        child: const Text('OK'),
      ),
    ],
  );
}
