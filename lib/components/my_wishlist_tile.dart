// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nikesneakerapp/models/product.dart';
import 'package:nikesneakerapp/models/shop.dart';
import 'package:provider/provider.dart';

class MyWishlistTile extends StatelessWidget {

  final Product product;

  const MyWishlistTile({
    super.key,
    required this.product,
    });

    // remove item from Cart
    void removeFromWishlist(BuildContext context) {
      ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Durations.long3,
        content: Center(child: Text("Item removed from wishlist"))
        )
      );
      context.read<Shop>().removeFromWishlist(product);
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListTile(

          // Product image
          leading: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(5)
              ),
              padding: EdgeInsets.all(6),
              child: Image.asset(product.imagePath),
            ),
          ),

          // Product name
          title: Text(product.name),

          //Product prirce
          subtitle: Text(product.price.toStringAsFixed(2)),

          // Remove item from wishlist
          trailing: IconButton(
            onPressed: () => removeFromWishlist(context), 
            icon: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(5)
              ),
              padding: EdgeInsets.all(3),
              child: Icon(Icons.remove)
              ),
            )
        ),
      )
    );
  }
}