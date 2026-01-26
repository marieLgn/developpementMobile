import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ContinueButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        foregroundColor: Color.fromARGB(240, 30, 71, 87),
        backgroundColor: Color.fromARGB(239, 20, 99, 100),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      child: const Text('Continuer'),
    );
  }
}
