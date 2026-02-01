import 'package:flutter/material.dart';

class OrSeparator extends StatelessWidget {
  const OrSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Expanded(child: Divider()),
        SizedBox(width: 10),
        Text('Or', style: TextStyle(color: Color(0xFF94A3B8))),
        SizedBox(width: 10),
        Expanded(child: Divider()),
      ],
    );
  }
}
