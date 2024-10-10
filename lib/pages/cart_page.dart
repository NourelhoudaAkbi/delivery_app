import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/components/my_cart_tile.dart';
import 'package:delivery_app/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {

        final userCart = restaurant.cart;

      return Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context, 
                  builder: (context) => AlertDialog(
                    title: const Text('Are you sure?'),
                    content: const Text('This will clear your cart'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel')
                      ),
                      TextButton(
                        child: const Text('Delete'),
                        onPressed: () {
                          Navigator.pop(context);
                          restaurant.clearCart();
                        },
                  ),
                  ],
                  ),
                  );
              },
              icon: const Icon(Icons.delete),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty ? 
                  Expanded(child: Center(child: const Text('Your cart is empty'))) 
                  : Expanded(
                    child: ListView.builder(
                      itemCount: userCart.length,
                      itemBuilder: (context, index) {
                        final cartItem = userCart[index];
                        return MyCartTile(cartItem: cartItem);
                      }
                      )
                    )
              ],),
            ),

            // total price
            // Row of total price 
            
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                           
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$${restaurant.getTotalPrice().toStringAsFixed(2)}',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary
                          ),
                        ),
                      ],
                    ),
                  ),

                  MyButton(
                    text: 'Checkout',
                    onTap: () {
                      Navigator.pushNamed(context, '/checkout');
                    },
                  ),
                  SizedBox(height: 25),
                ],)
        ],),
      );
      }
      );
  }
}
