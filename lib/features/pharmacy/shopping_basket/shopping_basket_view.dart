import 'package:flutter/material.dart';
import 'package:medcare/features/pharmacy/shopping_basket/cart.dart';
import 'package:provider/provider.dart';

class ShoppingBasketView extends StatelessWidget {
  const ShoppingBasketView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Scaffold(
          appBar: AppBar(
            
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shopping_cart),
                Center(child: Text("  Shopping Basket  ")),
                Icon(Icons.shopping_cart),
              ],
            ),
            backgroundColor: const Color.fromARGB(255, 187, 190, 188),
          ),
          body: cart.basketProduct.isEmpty
              ? const Center(child: Text("No items in the basket"))
              : ListView.builder(
                  itemCount: cart.basketProduct.length,
                  itemBuilder: (context, index) {
                    final product = cart.basketProduct[index].product;
                    final quantity = cart.basketProduct[index].quantity;

                    return Card(
                      margin: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Image.asset(
                          product.imageAsset,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(product.name),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Unit Price: ${product.price.toStringAsFixed(1)} EGP"),
                            Text("Quantity: $quantity"),
                            Text("Total: ${(product.price * quantity).toStringAsFixed(1)} EGP"),
                          ],
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            cart.remove(product); 
                          },
                        ),
                      ),
                    );
                  },
                ),
          bottomNavigationBar: Container(
            padding: const EdgeInsets.only(top: 10.0,bottom: 10,left: 20,right: 100),
            color: const Color.fromARGB(255, 58, 58, 58),
            child: Text(
              "Total Price: ${cart.totalPrice.toStringAsFixed(1)} EGP",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
