import 'package:coffee/components/bottom_nav.dart';
import 'package:coffee/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        bottomNavigationBar: BottomNav(),
    );
  }
}