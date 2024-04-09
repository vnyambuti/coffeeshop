import 'package:coffee/components/coffee_tile.dart';
import 'package:coffee/models/coffee.dart';
import 'package:coffee/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}


class _ShopPageState extends State<ShopPage> {
  @override

  //add to cart

  void addToCart(Coffee coffee){
       Provider.of<CoffeeShop>(context,listen: false).addtoCart(coffee);
       showDialog(context: context, builder:(context) => AlertDialog(title: Text('Added'),),);
  }
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder:(context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: [
          Text("How would you like your coffee",style: TextStyle(fontSize: 15),),
        
          SizedBox(height: 25,),
        //list coffees
          Expanded(child: ListView.builder(
            itemCount: value.coffeeShop.length,
            itemBuilder: (context,index)
          
          {
        
            //get individual coffee
        Coffee coffee=value.coffeeShop[index];


        
        
        
            //return tile
        return CoffeeTile(coffee: coffee,onPressed:()=> addToCart(coffee),icon: Icon(Icons.add),);
          }))
        ],
        
        ),
      ),
    ));
  }
}