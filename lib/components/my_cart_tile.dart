// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nikesneakerapp/models/product.dart';
import 'package:nikesneakerapp/models/shop.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {

  final Product product;

  const MyCartTile({
    super.key,
    required this.product,
    });

    // remove item from Cart
    void removeFromCart(BuildContext context) {
      ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Durations.long3,
        content: Center(child: Text("Item removed from cart"))
        )
      );
      context.read<Shop>().removeFromCart(product);
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

          // product name
          title: Text(product.name),

          // Product price
          subtitle: Text(product.price.toStringAsFixed(2)),

          // Remove item from cart
          trailing: IconButton(
            onPressed: () => removeFromCart(context), 
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