import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  final String label;
  const TextInputWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        label: Text(
          label,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
      ),
    );
  }
}
