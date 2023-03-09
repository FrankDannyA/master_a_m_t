import 'package:flutter/material.dart';

class TextfieldInput extends StatelessWidget {
  final String hintName;
  TextInputType inputType;
  TextfieldInput({
    Key? key,
    required this.hintName,
    this.inputType = TextInputType.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
        bottom: 8,
      ),
      child: TextField(
        keyboardType: inputType,
        decoration: InputDecoration(
          hintText: hintName,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
