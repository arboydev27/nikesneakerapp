// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nikesneakerapp/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Drawer header
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // Icon/ logo
          DrawerHeader(
            child: Image.asset('assets/icons8-nike-100.png')
            ),

          // Shop Tile
          MyListTile(
            icon: Icons.home, 
            text: 'Shop', 
            onTap: () => Navigator.pop(context)
            ),

          // Wishlist Tile
          MyListTile(
            icon: Icons.favorite, 
            text: 'Wishlist', 
            onTap: () {
              // Pop drawer
              Navigator.pop(context);

              // Naviagte to wishlist page
              Navigator.pushNamed(context, '/wishlist_page');
            }
            ),

          // Cart Tile
          MyListTile(
            icon: Icons.shopping_cart, 
            text: 'Cart', 
            onTap: () {
              // Pop drawer
              Navigator.pop(context);

              // Naviagte to cart page
              Navigator.pushNamed(context, '/cart_page');
            }
            ),

          // Contact us Tile
          MyListTile(
            icon: Icons.call, 
            text: 'Contact us', 
            onTap: () {
              // Pop drawer
              Navigator.pop(context);

              // Naviagte to cart page
              //Navigator.pushNamed(context, '/cart_page');
            }
            ),
            ],
          ),

          // Exit Tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: MyListTile(
              icon: Icons.exit_to_app, 
              text: 'Exit shop', 
              onTap: () {
                // Pop drawer
                Navigator.pop(context);
            
                // Naviagte to Splash page
                Navigator.pushNamedAndRemoveUntil(context, '/splash_page', (route) => false);
              }
              ),
          ),
        ],
      ),
    );
  }
}