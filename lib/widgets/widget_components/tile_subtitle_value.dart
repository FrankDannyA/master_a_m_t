import 'package:flutter/material.dart';

class TileSubtitleValue extends StatelessWidget {
  final String value;

  const TileSubtitleValue({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );
    ;
  }
}
