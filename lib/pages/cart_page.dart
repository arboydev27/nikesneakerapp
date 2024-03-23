// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:nikesneakerapp/components/my_button.dart';
import 'package:nikesneakerapp/components/my_cart_tile.dart';
import 'package:nikesneakerapp/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // Add payment info
  void addPaymentInfo(BuildContext context) {
    // Show notification from bottom
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Durations.long3,
        content: Center(child: Text("Add Payment method"))
        )
      );
  }

  @override
  Widget build(BuildContext context) {

    // Access cart
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Cart"),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: cart.isEmpty ? Center(child: Text("Your cart is empty.")) : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                // Get acces to the cart
                final product = cart[index];
            
                // return as a CartTile UI
                return MyCartTile(product: product);
              }
              ),
          ),

          // Pay button
          Padding(
            padding: const EdgeInsets.only(bottom: 90, top: 10),
            child: MyButton(
              onTap: () => addPaymentInfo(context), 
              child: Text(
                "Pay Now",
                style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.inversePrimary),
                )
              ),
          )
        ],
      ),
    );
  }
}