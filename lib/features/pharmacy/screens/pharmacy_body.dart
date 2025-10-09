import 'package:flutter/material.dart';
import 'package:medcare/features/pharmacy/shopping_basket/cart.dart';
import 'package:medcare/features/pharmacy/shopping_basket/shopping_basket_view.dart';
import 'package:provider/provider.dart';
import '../controllers/pharmacy_controller.dart';
import '../widgets/search_bar.dart';
import '../widgets/product_card.dart';

class PharmacyBody extends StatelessWidget {
  const PharmacyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      
       Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: 'Phar',
                    style: TextStyle(color: Color.fromARGB(255, 72, 3, 136)),
                  ),
                  TextSpan(
                    text: 'macy',
                    style: TextStyle(color: Color.fromARGB(255, 0, 150, 136)),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          actions: [
            Consumer<Cart>(
              builder: (context, cart, _) {
                return Row(
                  children: [
                    Text(cart.count.toString()),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>ShoppingBasketView()));
                      },
                      icon: const Icon(Icons.shopping_cart, size: 30),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
         

        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Consumer<PharmacyController>(
            builder: (context, controller, _) {
              return Column(
                children: [
                  SearchBarWidget(
                    controller: controller.searchController,
                    onChanged: controller.filterProducts,
                  ),
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      itemCount: controller.displayedProducts.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.65,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                      itemBuilder: (context, index) {
                        return ProductCard(
                          product: controller.displayedProducts[index],
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      );
    
  }
}
