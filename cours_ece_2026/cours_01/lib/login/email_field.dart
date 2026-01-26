import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      style: const TextStyle(color: Color.fromARGB(240, 30, 71, 87)),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.email_outlined),
        hintText: 'Adresse email',
        hintStyle: const TextStyle(color: Color.fromARGB(239, 96, 101, 209)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color.fromARGB(239, 20, 99, 100)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color.fromARGB(239, 20, 99, 100)),
        ),
      ),
    );
  }
}
