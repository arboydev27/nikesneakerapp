// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nikesneakerapp/components/my_drawer.dart';
import 'package:nikesneakerapp/components/my_product_tile.dart';
import 'package:nikesneakerapp/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {

    // Access products in our shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Shop"),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          // When pressed go to wishlist
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/wishlist_page'), 
            icon: Icon(Icons.favorite_outline)
          ),

          // When pressed go to cart
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart_page'), 
            icon: Icon(Icons.shopping_cart_outlined)
          ),
        ],
      ),

      drawer: MyDrawer(),
      body: Column(
        children: [

          // Page subtitle
          Center(
            child: Text(
              "Explore the world of sneakers!",
              style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
              )
            ),

          SizedBox(height: 1),

          // ListView.builder
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              padding: const EdgeInsets.all(15),
              itemBuilder: (context, index) {
            // Get each individua; product from shop
            final product = products[index];
            
            // return as product tile UI
            return MyProductTile(product: product);
                    }
                    ),
          ),
        ],
      )
    );
  }
}