import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import '../models/text_field_model.dart';
import 'custom_text_form_field.dart';
import 'my_validators.dart';

class InquiryFormWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController phoneController;
  final TextEditingController emailController;
  final TextEditingController messageController;
  final String? selectedService;
  final List<String> services;
  final ValueChanged<String?> onServiceChanged;
  final VoidCallback onSendInquiry;

  const InquiryFormWidget({
    super.key,
    required this.formKey,
    required this.firstNameController,
    required this.lastNameController,
    required this.phoneController,
    required this.emailController,
    required this.messageController,
    required this.selectedService,
    required this.services,
    required this.onServiceChanged,
    required this.onSendInquiry,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    textFieldModel: TextFieldModel(
                      hintText: 'First Name',
                      controller: firstNameController,
                      keyboardType: TextInputType.name,
                      validator: MyValidators.displayNameValidator,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: CustomTextFormField(
                    textFieldModel: TextFieldModel(
                      hintText: 'Last Name',
                      controller: lastNameController,
                      keyboardType: TextInputType.name,
                      validator: MyValidators.displayNameValidator,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.greyColor.withOpacity(.06),
                labelText: 'Select Service Of Interest*',
                labelStyle: TextStyle(
                  color: AppColors.lightPrimary.withOpacity(0.8),
                  fontSize: 16
                ),
                hintStyle: TextStyle(color: Colors.grey[400]),
                border: outlineInputBorder(),
                enabledBorder: outlineInputBorder().copyWith(
                  borderSide: BorderSide(
                    color: AppColors.lightPrimary.withOpacity(0.5),
                    width: 1.0,
                  ),
                ),
                focusedBorder: outlineInputBorder().copyWith(
                  borderSide: const BorderSide(
                    color: AppColors.lightPrimary,
                    width: 2.0,
                  ),
                ),
                errorBorder: outlineInputBorder().copyWith(
                  borderSide: const BorderSide(
                    color: Colors.redAccent,
                    width: 1.5,
                  ),
                ),
                focusedErrorBorder: outlineInputBorder().copyWith(
                  borderSide: const BorderSide(
                    color: Colors.redAccent,
                    width: 2.0,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
              ),
              dropdownColor: Colors.white,
              style: const TextStyle(
                color: AppColors.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              value: selectedService,
              icon: const Icon(
                Icons.arrow_drop_down_rounded,
                color: AppColors.lightPrimary,
                size: 28,
              ),
              iconEnabledColor: AppColors.lightPrimary,
              items: services.map((String service) {
                return DropdownMenuItem<String>(
                  value: service,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      service,
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                );
              }).toList(),
              onChanged: onServiceChanged,
              validator: (value) =>
                  value == null ? 'Please select a service' : null,
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),

            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    textFieldModel: TextFieldModel(
                      hintText: 'Phone Number',
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value != null && value.isNotEmpty) {
                          return MyValidators.phoneValidator(value);
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: CustomTextFormField(
                    textFieldModel: TextFieldModel(
                      hintText: 'E-mail',
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: MyValidators.emailValidator,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              textFieldModel: TextFieldModel(
                hintText: 'Tell us about your project or message*',
                controller: messageController,
                keyboardType: TextInputType.multiline,
                maxLines: 6,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Message cannot be empty';
                  }
                  if (value.length < 10) {
                    return 'Message should be at least 10 characters';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: onSendInquiry,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.lightPrimary,
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 24,
                ),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 3,
              ),
              child: const Text('Send Inquiry'),
            ),
          ],
        ),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(6.0),
    borderSide: const BorderSide(color: Colors.white, width: 1.0),
  );
}
