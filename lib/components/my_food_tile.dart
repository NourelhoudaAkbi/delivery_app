import 'package:delivery_app/models/food.dart';
import 'package:flutter/material.dart';

class FoodTile extends StatelessWidget {

  final Food food;
  final void Function()? onTap;

  const FoodTile({
    super.key,
    required this.onTap,
    required this.food
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: onTap,
          child : Container(

            decoration: BoxDecoration(
              color: Theme. of (context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(12),
            ),
            
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // food image
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          food.imagePath,
                          height: 100,
                          width: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    // food name
                    
                        Text(
                          food.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                      "\$${food.price}",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                      ],
                    
                    // food price
                    
                  
                ),
              ),
            
          )
        
    );
  }
}