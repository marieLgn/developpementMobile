import 'package:flutter/material.dart';
import 'product_header.dart';
import 'product_data_item.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Étape 1 : Entête produit
          const ProductHeader(
            imageUrl:
                'https://images.openfoodfacts.org/images/products/301/762/042/9484/front_fr.4.400.jpg',
            productName: 'Nutella',
            brand: 'Ferrero',
          ),

          const SizedBox(height: 24),

          // 🔹 Étape 3 : Données produit
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                ProductDataItem(label: 'Quantité', value: '200 g'),
                SizedBox(height: 8),
                ProductDataItem(label: 'Vendu', value: 'France'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
