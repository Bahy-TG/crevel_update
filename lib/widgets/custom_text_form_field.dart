import 'package:flutter/material.dart';
import '../core/utils/app_colors.dart';
import '../models/text_field_model.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.textFieldModel});
  final TextFieldModel textFieldModel;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: textFieldModel.onTap,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: textFieldModel.keyboardType,
      controller: textFieldModel.controller,
      maxLines: textFieldModel.maxLines,
      validator: textFieldModel.validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.greyColor.withOpacity(.06),
        suffixIcon: GestureDetector(
          onTap: () => textFieldModel.controller.clear(),
          child: const Icon(Icons.clear, color: Colors.grey),
        ),
        hintText: textFieldModel.hintText,
        hintStyle: const TextStyle(color: Colors.grey,fontSize: 14),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
        errorBorder: outlineInputBorder(),
        focusedErrorBorder: outlineInputBorder(),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: const BorderSide(color: Colors.white),
  );
}
