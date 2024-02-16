import 'package:flutter/material.dart';
import 'package:flutter_demo/core/extensions/context_extension.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    required this.onPressed,
    required this.child,
    super.key,
  });

  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: context.colorScheme.primary,
        foregroundColor: context.colorScheme.onPrimary,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        disabledBackgroundColor: context.colorScheme.primary.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: context.textTheme.labelLarge,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
