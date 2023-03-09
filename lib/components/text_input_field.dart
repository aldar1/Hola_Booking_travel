import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({super.key});


  @override
  Widget build(BuildContext context) {
    return Expanded(
      // width: size.width * 0.7,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 22),
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search for place',
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red
            )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(
              color: Colors.blue[800]!,
              width: 1.5
            )
          )
        ),
      ),
    );
  }
}