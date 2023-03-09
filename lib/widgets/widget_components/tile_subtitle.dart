import 'package:flutter/material.dart';

class TileSubtitle extends StatelessWidget {
  final String name;

  const TileSubtitle({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
