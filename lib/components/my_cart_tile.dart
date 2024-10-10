

import 'package:delivery_app/components/quantity_selector.dart';
import 'package:delivery_app/models/cart_item.dart';
import 'package:delivery_app/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {

  final CartItem cartItem;
  const MyCartTile({
    super.key,
    required this.cartItem
    });

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
    child: Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12),

      ),
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column (
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                // food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    cartItem.food.imagePath,
                    
                    height: 70,
                    width: 70,
                  ),
                ),
                  
                const SizedBox (width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // food name
                    Text(cartItem.food.name,
                    style: const TextStyle(
                      fontSize: 14,
                      
                    )),
                    // food price
                    Text("\$" + cartItem.food.price.toString(),
                    style: const TextStyle(
                      fontSize: 14,
                      
                    )),
                    
                  ],
                ),
                  
                const Spacer(),
                // increment or decrement quantity
                QuantitySelector(
                  quantity: cartItem.quantity, 
                  food: cartItem.food, 
                  onIncrement: (){
                    restaurant.addToCart(cartItem.food, cartItem.selectedAddons);
                  }, 
                  onDecrement: (){
                    restaurant.removeFromCart(cartItem);
                  }
                  )
                  
            ],
                    ),
          ),

          // selected addons
          SizedBox(
            height: cartItem.selectedAddons.isEmpty ? 0 : 60,
            child : ListView(
              padding: EdgeInsets.all(12),
              scrollDirection: Axis.horizontal,
              children : cartItem.selectedAddons
              .map((addon) => 
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FilterChip(label: Row(
                  children: [
                    Text(addon.name),
                    const SizedBox (width: 5),
                    Text("\$" + addon.price.toString())
                  ]), 
                  shape: StadiumBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.primary
                      
                    ),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  labelStyle:  TextStyle(color:Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 12 ),
                
                  onSelected: (value){},),
              ))
              .toList(),
          ),),
         ],

      ),
    ),),
); }
}