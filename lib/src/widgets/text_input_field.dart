import 'package:flutter/material.dart';
import 'package:flutter_demo/core/extensions/context_extension.dart';
import 'package:flutter_demo/core/resources/colour.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    required this.controller,
    required this.hintText,
    super.key,
  });

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: context.textTheme.bodyMedium!.copyWith(
          color: Colour.grey,
        ),
        filled: true,
        fillColor: Colour.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: context.colorScheme.primary,
            width: 2,
          ),
        ),
      ),
    );
  }
}
