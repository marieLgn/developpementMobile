import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContinueWithButton extends StatelessWidget {
  final String provider;
  final String iconPath;
  final VoidCallback onPressed;

  const ContinueWithButton({
    super.key,
    required this.provider,
    required this.iconPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset(iconPath, width: 24, height: 24),
      label: Text('Continuer avec $provider'),
    );
  }
}
