// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nikesneakerapp/models/product.dart';
import 'package:nikesneakerapp/models/shop.dart';
import 'package:provider/provider.dart';

class MyProductTile extends StatelessWidget {

  final Product product;

  const MyProductTile({
    super.key,
    required this.product,
    });

  // Add to cart button pressed
  void addToCart(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Durations.long3,
        content: Center(child: Text("Item added to cart"))
        )
      );

    // Add to cart
    context.read<Shop>().addToCart(product);
  }

  void addToWishlist(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Durations.long3,
        content: Center(child: Text("Item added to wishlist"))
        )
      );

    // Add to cart
    context.read<Shop>().addToWishlist(product);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(15)
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product image
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(15)
              ),
              padding: EdgeInsets.all(25),
              child: Image.asset(product.imagePath),
              ),
          ),

          SizedBox(height: 25),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Text(
                product.name,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
          ),
            
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                '\$' + product.price.toStringAsFixed(2),
                ),

                Row(
                  children: [
                    IconButton(
                  onPressed: () => addToWishlist(context), 
                  icon: Icon(Icons.favorite_outline_rounded)
                  ),

                  SizedBox(width: 10),
            
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(7)
                  ),
                  child: IconButton(
                  onPressed: () => addToCart(context), 
                  icon: Icon(Icons.add_shopping_cart_outlined),
                    ),
                  ),
                  ],
                )
                
            
              ],
            ),
          ),
        ],
      ),
    );
  }
}