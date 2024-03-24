import 'package:flutter/material.dart';
import 'package:jiitaktest/utilities/colors/colors.dart';

class TextFormWidget extends StatelessWidget {
  final String hintText;
  const TextFormWidget({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.0),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 232, 228, 228),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: blackColor,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        hintText: hintText,
      ),
    );
  }
}
