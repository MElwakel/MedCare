import 'package:flutter/material.dart';
import 'package:medcare/features/pharmacy/shopping_basket/cart.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(product.imageAsset, fit: BoxFit.contain),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      product.description,
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      '${product.price.toStringAsFixed(1)} EGP',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.green[800],
                      ),
                    ),
                    const SizedBox(height: 6),
                    ElevatedButton(
                      onPressed: () {
                        cart.add(product);

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Row(
                              children: [
                                const Icon(
                                  Icons.check_circle,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    '${product.name} added to cart',
                                    style: const TextStyle(color: Colors.white),
                                    overflow: TextOverflow.ellipsis, 
                                  ),
                                ),
                              ],
                            ),
                            backgroundColor: Colors.green[600],
                            duration: const Duration(seconds: 1),
                            behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            margin: const EdgeInsets.all(12),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Add to Cart'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
