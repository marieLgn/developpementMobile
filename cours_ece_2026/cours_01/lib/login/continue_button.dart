import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {

  const ContinueButton({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        foregroundColor: Color(0xFFFFFFFF),
        backgroundColor: Color(0xFF248BA1),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      child: const Text('Continuer'),
    );
  }
}
