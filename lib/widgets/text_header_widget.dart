import 'package:flutter/material.dart';

class TextHeaderWidget extends StatelessWidget {
  const TextHeaderWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        letterSpacing: 2,
      ),
    );
  }
}
