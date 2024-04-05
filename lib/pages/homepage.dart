import 'package:coffee/components/bottom_nav.dart';
import 'package:coffee/const.dart';

import 'package:flutter/material.dart';

import 'cart-page.dart';

import 'shop-page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
  
}


class _HomePageState extends State<HomePage> {
  int _selectedindex=0;



final List<Widget> _pages=[
  ShopPage(),

  CartPage()
];
  void navigate(int index){
setState((){
  _selectedindex=index;
});
}
  @override

  Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: bg,
        bottomNavigationBar: BottomNav(
          onTabChange: (index) => navigate(index),
        ),
        body: _pages[_selectedindex],
    );
  }
  
  }
