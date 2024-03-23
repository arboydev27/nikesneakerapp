
// ignore_for_file: prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:nikesneakerapp/models/product.dart';

class Shop extends ChangeNotifier {
  // List of products in Shop
  List<Product> _shop = [
    // Product 1
    Product(
      name: "Air Force 1 Low LV8 'Graffiti Graphics'", 
      price: 242, 
      description: "Best shoe in town",
      imagePath: 'assets/CQ4217_001.png.png.webp',
      ),
/*
    // Product 1
    Product(
      name: "Air Jordan 4 Retro 'Frozen Moments'", 
      price: 270, 
      description: "Best shoue in town", 
      imagePath: 'assets/1059448_00.png.png.webp'
      // assets/529864_00.png.png.webp
      ),
      */

     // Product 1
    Product(
      name: "Air Jordan 4 Retro 'Neon 95'", 
      price: 270, 
      description: "Best shoue in town", 
      imagePath: 'assets/529864_00.png.png.webp'
      ),
      
    
    // Product 1
    Product(
      name: "Air Jordan 4 'Military navy'", 
      price: 308, 
      description: "Best shoue in town",
      imagePath: 'assets/946189_00.png.png.webp' 
      ),

    // Product 1
    Product(
      name: "Air Jordan 11 Retro 'Cool Grey' 2021", 
      price: 160, 
      description: "Best shoue in town", 
      imagePath: 'assets/704157_00.png.png.webp'
      ),

    // Product 1
    Product(
      name: "Air Force 1 LV8 'Go The Extra Smile'", 
      price: 118, 
      description: "Best shoue in town", 
      imagePath: 'assets/853936_00.png.png.webp'
      ),

    // Product 1
    Product(
      name: "Space Jam x Air Force 1 '07 Low 'Hare'", 
      price: 120, 
      description: "Best shoue in town",
      imagePath: 'assets/784793_00.png.png.webp' 
      ),

    // Product 1
    Product(
      name: "Air Jordan 4 Retro 'Frozen Moments'", 
      price: 410, 
      description: "Best shoue in town",
      imagePath: 'assets/1059448_00.png.png.webp' 
      ),

    // Product 1
    Product(
      name: "Air Jordan 4 Retro 'Infrared'", 
      price: 160, 
      description: "Best shoue in town",
      imagePath: 'assets/888097_00.png.png.webp' 
      ),

    // Product 1
    Product(
      name: "Paris Saint-Germain x Air Jordan Retro 'Bordeaux'", 
      price: 405, 
      description: "Best shoue in town",
      imagePath: 'assets/577878_00.png.png.webp' 
      ),

    // Product 1
    Product(
      name: "Air Jordan 1 Retro High OG 'UNC Toe", 
      price: 130, 
      description: "Best shoue in town",
      imagePath: 'assets/1214932_00.png.png.webp' 
      ),

  ];

  // List of Products in Cart
  List<Product> _cart = [];

  // List of Products in Wishlist
  List<Product> _wishlist = [];

  // Get shop list
  List<Product> get shop => _shop;

  // Get cart list
  List<Product> get cart => _cart;

  // Get wishlist
  List<Product> get wishlist => _wishlist;

  // Add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // Remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }

  // Add item to wishlist
  void addToWishlist(Product item) {
    _wishlist.add(item);
    notifyListeners();
  }

  // Remove item from wishlist
  void removeFromWishlist(Product item) {
    _wishlist.remove(item);
    notifyListeners();
  }

}