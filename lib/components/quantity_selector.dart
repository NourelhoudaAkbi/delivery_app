
import 'package:delivery_app/models/food.dart';
import 'package:flutter/material.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;


  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.food,
    required this.onIncrement,
    required this.onDecrement,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),

        color: Theme. of (context).colorScheme.background,
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
            GestureDetector(
              onTap: onDecrement,
              child: const Icon (
                Icons.remove,
                size: 16,
     
                ),
                ), 
                const SizedBox (width: 8),
                Padding (
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: SizedBox(
                    width: 20,
            child: Center(
              child: Text (
                quantity.toString(),
                ), 
                ),
          ), 
            ), 
            GestureDetector(
              onTap: onIncrement,
              child: const Icon(
                Icons.add,
                size: 16, 
             
      ),),
        ],
    ));
  }
}