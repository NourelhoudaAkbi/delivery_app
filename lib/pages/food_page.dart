import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/models/food.dart';
import 'package:delivery_app/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {

  final Food food;
  final Map<Addon, bool> selectedAddons = {};

   FoodPage({
    super.key,
    required this.food
    }){ 

    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
}


  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  void addToCart (Food food, Map<Addon, bool> selectedAddons) {

    // close 
    Navigator.pop(context);
    // get selected addons
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // scaffold
        Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SingleChildScrollView(
          child: Column(
          
              children: [
                // food image
               Container(
                color: Theme.of(context).colorScheme.secondary,
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
                        Text('\$${widget.food.price.toString()}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
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
                              value: widget.selectedAddons[addon], 
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              },
                              ),
                          );
                        },
                      ),
                      // food price and add to cart button
                      
                    ],
                  ),
                ),
                MyButton(
                        text: 'Add To Cart', 
                        onTap: () => addToCart(widget.food, widget.selectedAddons),
                      
                        ),
            ],),
        ),
      ),
      
    ),
        // back btn
        Positioned(
          top: 40,
          left: 20,
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios,
              ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }
}