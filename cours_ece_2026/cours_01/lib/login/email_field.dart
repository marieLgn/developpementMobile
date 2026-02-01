import 'package:flutter/material.dart';
import 'package:cours_01/res/colors.dart';

class EmailField extends StatelessWidget {

  const EmailField({required this.onChanged, super.key});
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      style: const TextStyle(color: Color(0xFF0F172A)),
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.email_outlined),
        hintText: 'Adresse e-mail',
        hintStyle: const TextStyle(color: Color(0xFF94A3B8)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF94A3B8)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF79899F)),
        ),
      ),
    );
  }
}
