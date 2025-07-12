import 'package:flutter/material.dart';

class TextFieldModel {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final int? maxLines;

  const TextFieldModel({
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    required this.validator,
    this.onTap,
    this.maxLines = 1,
  });
}
