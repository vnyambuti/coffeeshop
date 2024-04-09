import 'package:coffee/components/coffee_tile.dart';
import 'package:coffee/models/coffee.dart';
import 'package:coffee/models/coffee_shop.dart';
import 'package:coffee/pages/shop-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';



class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  deleteCofee(Coffee cofee){
Provider.of<CoffeeShop>(context,listen: false).removeCart(cofee);
  }

  Pay(){

  }
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder:(context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
           Text('Your Cart',style: TextStyle(fontSize: 15),),
           SizedBox(height: 10,),
           Expanded(child: ListView.builder(
        itemCount: value.getCart.length,
            itemBuilder:(context, index)  {
            Coffee coffeeitem=value.getCart[index];
        
            return CoffeeTile(coffee: coffeeitem, onPressed: ()=>deleteCofee(coffeeitem), icon: Icon(Icons.delete));
           },)),

           GestureDetector(
            onTap: () => Pay(),
             child: Container(
             
                       
              padding: EdgeInsets.all(25),
              
              decoration: BoxDecoration(color: Colors.brown,borderRadius: BorderRadius.circular(12)),
              width: double.infinity,
              child: Center(child: Text('Pay Now',style: TextStyle(color: Colors.white),)),
             ),
           )
           
          ],

        
        
        ),
      ),
    ),);
  }
}