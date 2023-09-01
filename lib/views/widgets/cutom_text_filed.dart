import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved});
  final String hint;
  final int maxLines;

  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Filed is required';
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryClolr,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        border: builedBorder(),
        enabledBorder: builedBorder(),
        focusedBorder: builedBorder(kPrimaryClolr),
      ),
    );
  }

  OutlineInputBorder builedBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
