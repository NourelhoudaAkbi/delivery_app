import 'package:delivery_app/models/food.dart';
import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {

  final Food food;

  const FoodPage({
    super.key,
    required this.food
    });

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

          children: [
            // food image
           Container(
            color: Color.fromARGB(255, 234, 213, 216),
             child: Center(
               child: Image.asset(
                
                  widget.food.imagePath,
                  ),
             ),
           ),
            // food name
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.food.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      
                    )),
                  // food description
                  Text(
                    widget.food.description,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    )),
                  // food addons
                  const SizedBox(height: 10),
                   Text(
                    'Add-ons',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: widget.food.availableAddons.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      // food addons
                      Addon addon = widget.food.availableAddons[index];
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        child: CheckboxListTile(
                          title: Text(
                            addon.name,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                          subtitle: Text(
                            '\$${addon.price.toString()}',
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,),
                            ),
                          value: false, 
                          onChanged: (value) {},
                          ),
                      );
                    },
                  ),
                  // food price and add to cart button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$${widget.food.price.toString()}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      )),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add_shopping_cart),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ],),
      
    );
  }
}