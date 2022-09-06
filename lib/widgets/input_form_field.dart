import 'package:flutter/material.dart';

class InputFormField extends StatelessWidget {
  const InputFormField({
    Key? key,
    this.hintText,
    this.onChanged,
    this.validator,
    this.borderColor,
  }) : super(key: key);

  final String? hintText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: _getBorder(Colors.grey),
        focusedBorder: _getBorder(Colors.blue),
        errorBorder: _getBorder(Colors.red),
        focusedErrorBorder: _getBorder(Colors.red.shade900),
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }

  InputBorder _getBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
      ),
    );
  }


}