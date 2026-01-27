import 'package:flutter/material.dart';

class ProductHeader extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String brand;

  const ProductHeader({
    super.key,
    required this.imageUrl,
    required this.productName,
    required this.brand,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image de fond
        Image.network(
          imageUrl,
          width: double.infinity,
          height: 220,
          fit: BoxFit.cover,
        ),

        // Carte au-dessus de l’image
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            padding: const EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
              bottom: 20,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  brand,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
