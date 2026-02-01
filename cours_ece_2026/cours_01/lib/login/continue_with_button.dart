import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContinueWithButton extends StatelessWidget {

  const ContinueWithButton({
    required this.provider, required this.iconPath, required this.onPressed, super.key,
  });
  final String provider;
  final String iconPath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFF0F172A),
      ),
      child: Row(
        children: <Widget>[
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
