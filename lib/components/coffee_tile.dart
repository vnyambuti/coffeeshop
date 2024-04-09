import 'package:coffee/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {

  final Coffee coffee;
  final Icon icon;
  void Function()? onPressed;
   CoffeeTile({super.key, required this.coffee, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price.toString()),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(onPressed: onPressed, icon: icon),
      ),
    );
  }
}