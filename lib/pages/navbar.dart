// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mwebprktk1/pages/home.dart';
import 'package:mwebprktk1/pages/product.dart';
import 'package:mwebprktk1/pages/profile.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  void _navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [Homepage(), Product(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigationBar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'shop cart'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings'),
            
          ]),
    );
  }
}
