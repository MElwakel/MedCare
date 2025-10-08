import 'package:flutter/material.dart';
import '../models/product.dart';
import '../data/pharmacy_products.dart';

class PharmacyController extends ChangeNotifier {
  final TextEditingController searchController = TextEditingController();

  List<Product> allProducts = List.from(pharmacyProducts);
  List<Product> displayedProducts = List.from(pharmacyProducts);

  void filterProducts(String query) {
    if (query.isEmpty) {
      displayedProducts = allProducts;
    } else {
      displayedProducts = allProducts
          .where((p) => p.name.toLowerCase().startsWith(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }

  void disposeController() {
    searchController.dispose();
  }
}
