import 'package:flutter/material.dart';

import '../../../utils/theme/theme.dart';

class CustomLoginTextField extends StatelessWidget {
  const CustomLoginTextField(
      {Key? key,
      required this.context,
      required this.controller,
      required this.labelText,
      this.keyboardType,
      this.focusNode,
      this.onChanged,
      this.obscureText = false,
      this.textInputAction,
      this.validator,
      this.maxlength,
      this.autovalidateMode})
      : super(key: key);
  final BuildContext context;

  final bool obscureText;
  final String labelText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;

  final TextInputAction? textInputAction;
  final int? maxlength;
  final AutovalidateMode? autovalidateMode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        maxLength: maxlength,
        keyboardType: keyboardType,
        style: AppTheme.lightTheme.textTheme.bodyMedium
            ?.copyWith(color: secondaryColor),
        controller: controller,
        cursorColor: primaryColor,
        obscureText: obscureText,
        autovalidateMode: autovalidateMode,
        decoration: InputDecoration(
          errorStyle: AppTheme.lightTheme.textTheme.labelSmall
              ?.copyWith(color: errorColor),
          fillColor: backgroundColor,
          filled: true,
          labelText: labelText,
          isDense: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1, color: secondaryLightColor),
              borderRadius: BorderRadius.circular(5)),
          errorBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: errorColor.withOpacity(0.9)),
              borderRadius: BorderRadius.circular(5)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: primaryColor),
              borderRadius: BorderRadius.circular(5)),
          labelStyle: AppTheme.lightTheme.textTheme.labelMedium
              ?.copyWith(color: secondaryMediumColor),
           enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: secondaryLightColor),
              borderRadius: BorderRadius.circular(5)),
        ),
        textInputAction: textInputAction,
        focusNode: focusNode,
        autocorrect: false,
        onChanged: onChanged,
        validator: validator,
      ),
    );
  }
}
