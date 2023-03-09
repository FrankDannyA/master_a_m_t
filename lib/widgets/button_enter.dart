import 'package:flutter/material.dart';

class ButtonEnter extends StatelessWidget {
  final String nameButton;
  VoidCallback pressButton;
  ButtonEnter({
    Key? key,
    required this.nameButton,
    required this.pressButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16,
        left: 16,
        top: 8,
        bottom: 8,
      ),
      child: MaterialButton(
        color: Colors.orange,
        height: 48,
        minWidth: 160,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: pressButton,
        child: Text(
          nameButton,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
