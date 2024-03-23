// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nikesneakerapp/components/my_button.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Nike logo
            Image.asset('assets/icons8-nike-100.png'),

            SizedBox(height: 25),
        
            // Title
            Text(
              "Sneaker App",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            SizedBox(height: 10),
        
            // Subtitle
            Text(
              "Welcome to our online store",
              style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
            ),

            SizedBox(height: 25),
        
            // Button to naviagte to HomePage
            MyButton(
              onTap: () => Navigator.pushNamed(context, '/shop_page'), 
              child: Icon(Icons.arrow_forward_rounded)
              )
        ],),
      ),
    );
  }
}