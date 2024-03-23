// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nikesneakerapp/models/shop.dart';
import 'package:nikesneakerapp/pages/cart_page.dart';
import 'package:nikesneakerapp/pages/shop_page.dart';
import 'package:nikesneakerapp/pages/splash_page.dart';
import 'package:nikesneakerapp/pages/wishlist_page.dart';
import 'package:nikesneakerapp/themes/themes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
      ),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      theme: lightMode,
      routes: {
        '/splash_page':(context) => SplashPage(),
        '/shop_page':(context) => ShopPage(),
        '/wishlist_page':(context) => WishlistPage(),
        '/cart_page':(context) => CartPage(),
      },
    );
  }
}