import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../res/colors.dart';

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
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFF0F172A),
      ),
      child: Row(
        children: [
          SvgPicture.asset(iconPath, width: 24, height: 24),
          Expanded(
            child: Text(
              'Continuer avec $provider',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
