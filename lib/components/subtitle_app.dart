import 'package:flutter/material.dart';

class SubtitleApp extends StatelessWidget {
  const SubtitleApp({
    required this.subtitle,
    super.key,
  });

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: const TextStyle(
        fontSize: 23,
        color: Color.fromARGB(255, 18, 67, 130),
        fontWeight: FontWeight.w600
      ),
    );
  }
}
