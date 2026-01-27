import 'package:flutter/material.dart';

class ProductDataItem extends StatelessWidget {
  final String label;
  final String? value;
  final bool showSeparator;

  const ProductDataItem({
    super.key,
    required this.label,
    this.value,
    this.showSeparator = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
        Text(
          value ?? (showSeparator ? '-' : ''),
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
