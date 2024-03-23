// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nikesneakerapp/components/my_wishlist_tile.dart';
import 'package:nikesneakerapp/models/shop.dart';
import 'package:provider/provider.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});


  @override
  Widget build(BuildContext context) {

    // Access cart
    final wishlist = context.watch<Shop>().wishlist;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Wishlist"),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: wishlist.isEmpty ? Center(child: Text("Your wishlist is empty.")) : ListView.builder(
              itemCount: wishlist.length,
              itemBuilder: (context, index) {
                // Get acces to the cart
                final product = wishlist[index];
            
                // return as a CartTile UI
                return MyWishlistTile(product: product);
              }
              ),
          ),
        ],
      ),
    );
  }
}