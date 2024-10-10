

import 'package:collection/collection.dart';
import 'package:delivery_app/models/cart_item.dart';
import 'package:delivery_app/models/food.dart';
import 'package:flutter/material.dart';

class Restaurant extends ChangeNotifier {
   final List<Food> _menu = [
    // burgers
    Food(
      name: 'Cheese Burger',
      description : "The best cheese burger in town with caramelized onions",
      imagePath: 'assets/burgers/cheeseburger.png',
      price: 12.50,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Cheese', price: 0.50),
        Addon(name: 'Lettuce', price: 0.50),
        Addon(name: 'Tomato', price: 0.50),
      ],
      ),
    Food(
      name: 'Chicken Burger',
      description : "The best chicken burger in town",
      imagePath: 'assets/burgers/chicken.png',
      price: 12.50,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Cheese', price: 0.50),
        Addon(name: 'Lettuce', price: 0.50),
        Addon(name: 'Tomato', price: 0.50),
      ],
      ),
    Food(
      name: 'Double Burger',
      description : "The best double burger in town",
      imagePath: 'assets/burgers/cheeseburger.png',
      price: 12.50,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Cheese', price: 0.50),
        Addon(name: 'Lettuce', price: 0.50),
        Addon(name: 'Tomato', price: 0.50),
      ],
      ),
    Food(
      name: 'Extra Burger',
      description : "The best burger in town",
      imagePath: 'assets/burgers/extraburger.png',
      price: 12.50,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Cheese', price: 0.50),
        Addon(name: 'Lettuce', price: 0.50),
        Addon(name: 'Tomato', price: 0.50),
      ],
      ),
    Food(
      name: 'Beef Burger',
      description : "The best grilled beef burger in town",
      imagePath: 'assets/burgers/grilledbeefburger.png',
      price: 12.50,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Cheese', price: 0.50),
        Addon(name: 'Lettuce', price: 0.50),
        Addon(name: 'Tomato', price: 0.50),
      ],
      ),

    // salad
    Food(
      name: 'Chicken Salad',
      description : "The best salad in town",
      imagePath: 'assets/salads/chickensalad.png',
      price: 12.50,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Ranch', price: 0.50),
        Addon(name: 'Mayo', price: 0.50),
        Addon(name: 'Mustard', price: 0.50),
      ],
      ),
    Food(
  name: 'Nacho Salad',
  description: 'A crunchy and spicy nacho salad, perfect for a snack!',
  imagePath: 'assets/salads/nachosalad.png',
  price: 10.00,
  category: FoodCategory.salads,
  availableAddons: [
    Addon(name: 'Guacamole', price: 1.00),
    Addon(name: 'Sour Cream', price: 0.75),
    Addon(name: 'Cheese', price: 1.00),
  ],
),
    Food(
  name: 'Quinoa Salad',
  description: 'A fresh and healthy quinoa salad packed with flavor.',
  imagePath: 'assets/salads/quinoasalad.png',
  price: 9.50,
  category: FoodCategory.salads,
  availableAddons: [
    Addon(name: 'Avocado', price: 1.50),
    Addon(name: 'Olive Oil', price: 0.50),
    Addon(name: 'Lemon Dressing', price: 0.50),
  ],
),
    Food(
  name: 'Mixed Salad',
  description: 'A delightful mix of fresh greens and veggies.',
  imagePath: 'assets/salads/salad.png',
  price: 8.00,
  category: FoodCategory.salads,
  availableAddons: [
    Addon(name: 'Feta Cheese', price: 1.00),
    Addon(name: 'Balsamic Vinaigrette', price: 0.50),
    Addon(name: 'Croutons', price: 0.50),
  ],
),
    Food(
  name: 'Salmon Salad',
  description: 'A hearty salad topped with delicious grilled salmon.',
  imagePath: 'assets/salads/salmonsalad.png',
  price: 14.50,
  category: FoodCategory.salads,
  availableAddons: [
    Addon(name: 'Dill Sauce', price: 0.75),
    Addon(name: 'Capers', price: 0.50),
    Addon(name: 'Lemon Wedge', price: 0.25),
  ],
),

    // drink
    Food(
  name: 'Cocktail',
  description: 'A refreshing cocktail with a perfect blend of flavors.',
  imagePath: 'assets/drinks/cocktail.png',
  price: 15.00,
  category: FoodCategory.drinks,
  availableAddons: [
    Addon(name: 'Mint Leaves', price: 0.50),
    Addon(name: 'Ice Cubes', price: 0.25),
    Addon(name: 'Syrup', price: 0.75),
  ],
),
    Food(
  name: 'Coffee',
  description: 'Freshly brewed coffee to energize your day.',
  imagePath: 'assets/drinks/coffee.png',
  price: 5.00,
  category: FoodCategory.drinks,
  availableAddons: [
    Addon(name: 'Milk', price: 0.50),
    Addon(name: 'Cinnamon', price: 0.25),
    Addon(name: 'Sugar', price: 0.25),
  ],
),
    Food(
  name: 'Cola',
  description: 'Chilled and fizzy cola for a refreshing sip.',
  imagePath: 'assets/drinks/cola.png',
  price: 3.50,
  category: FoodCategory.drinks,
  availableAddons: [
    Addon(name: 'Ice Cubes', price: 0.25),
    Addon(name: 'Lemon Slice', price: 0.50),
    Addon(name: 'Straw', price: 0.10),
  ],
),
    Food(
  name: 'Iced Coffee',
  description: 'Cool and creamy iced coffee, perfect for hot days.',
  imagePath: 'assets/drinks/icedcoffee.png',
  price: 6.50,
  category: FoodCategory.drinks,
  availableAddons: [
    Addon(name: 'Whipped Cream', price: 0.75),
    Addon(name: 'Caramel Syrup', price: 0.50),
    Addon(name: 'Ice Cubes', price: 0.25),
  ],
),
    Food(
  name: 'Raspberry Drink',
  description: 'A sweet and tangy raspberry drink for a fruity treat.',
  imagePath: 'assets/drinks/rasberry.png',
  price: 4.50,
  category: FoodCategory.drinks,
  availableAddons: [
    Addon(name: 'Mint Leaves', price: 0.50),
    Addon(name: 'Ice Cubes', price: 0.25),
    Addon(name: 'Syrup', price: 0.50),
  ],
),

    // dessert
    Food(
  name: 'Brownies',
  description: 'Rich and fudgy brownies with a perfect chocolate flavor.',
  imagePath: 'assets/desserts/brownies.png',
  price: 7.50,
  category: FoodCategory.desserts,
  availableAddons: [
    Addon(name: 'Whipped Cream', price: 0.50),
    Addon(name: 'Chocolate Chips', price: 0.75),
    Addon(name: 'Ice Cream', price: 1.00),
  ],
),
    Food(
  name: 'Cake',
  description: 'Delicious warm chocolate fondue for dipping fruits and sweets.',
  imagePath: 'assets/desserts/chocolatefondue.png',
  price: 10.00,
  category: FoodCategory.desserts,
  availableAddons: [
    Addon(name: 'Marshmallows', price: 0.50),
    Addon(name: 'Strawberries', price: 1.00),
    Addon(name: 'Banana Slices', price: 0.75),
  ],
),
    Food(
  name: 'Fruit Cake',
  description: 'A delightful fruit cake bursting with fresh fruit flavors.',
  imagePath: 'assets/desserts/fruitcake.png',
  price: 8.50,
  category: FoodCategory.desserts,
  availableAddons: [
    Addon(name: 'Nuts', price: 0.50),
    Addon(name: 'Extra Fruit', price: 1.00),
    Addon(name: 'Whipped Cream', price: 0.50),
  ],
),
    Food(
  name: 'Orange Cake',
  description: 'Zesty and sweet orange cake with a refreshing citrus taste.',
  imagePath: 'assets/desserts/orangecake.png',
  price: 9.00,
  category: FoodCategory.desserts,
  availableAddons: [
    Addon(name: 'Orange Zest', price: 0.50),
    Addon(name: 'Vanilla Cream', price: 0.75),
    Addon(name: 'Candied Orange Slices', price: 1.00),
  ],
),


    // side
    Food(
  name: 'Mashed Potatoes',
  description: 'Creamy and smooth mashed potatoes, a classic comfort side.',
  imagePath: 'assets/sides/mashedpotatoes.png',
  price: 5.50,
  category: FoodCategory.sides,
  availableAddons: [
    Addon(name: 'Gravy', price: 0.75),
    Addon(name: 'Butter', price: 0.50),
    Addon(name: 'Chives', price: 0.50),
  ],
),
    Food(
  name: 'Roasted Potatoes',
  description: 'Crispy roasted potatoes with herbs, a perfect crunchy bite.',
  imagePath: 'assets/sides/roastedpotato.png',
  price: 6.00,
  category: FoodCategory.sides,
  availableAddons: [
    Addon(name: 'Garlic', price: 0.50),
    Addon(name: 'Rosemary', price: 0.50),
    Addon(name: 'Parmesan', price: 0.75),
  ],
),
    Food(
  name: 'Stir-fry Veggies',
  description: 'A mix of colorful stir-fry vegetables, sautéed to perfection.',
  imagePath: 'assets/sides/stirfry.png',
  price: 7.00,
  category: FoodCategory.sides,
  availableAddons: [
    Addon(name: 'Soy Sauce', price: 0.50),
    Addon(name: 'Sesame Seeds', price: 0.50),
    Addon(name: 'Tofu', price: 1),
  ],
),
];

// getters
List<Food> get menu => _menu;
List<CartItem> get cart => _cart;

// operations
final List<CartItem>  _cart = [];
// add to cart
void addToCart (Food food, List<Addon> selectedAddons) {
  // see if there is a cart item already with the same food and selected addons
  CartItem? cartItem = _cart.firstWhereOrNull((item) {
    // check if the food items are the same
    bool isSameFood = item.food == food;
    // check if the list of selected addons are the same
    bool isSameAddons =
        ListEquality().equals(item.selectedAddons, selectedAddons);
    return isSameFood && isSameAddons;
  });
  // if item already exists, increase it's quantity
  if (cartItem != null) {
    cartItem.quantity++;
  }
  // otherwise, add a new cart item to the cart
  else {
    _cart.add(CartItem(
      quantity: 1,
      food: food, 
      selectedAddons: selectedAddons)
      );
  }
  notifyListeners();
}

// remove from cart
void removeFromCart (CartItem cartItem) {
  int cartIndex = _cart.indexOf(cartItem);
  if (cartIndex != -1) {
    if (_cart [cartIndex].quantity > 1) {
      _cart [cartIndex].quantity--;
    } else {
      _cart.removeAt(cartIndex);
    }
  }
  notifyListeners();
}

// get total price of cart
double getTotalPrice() {
  double total = 0.0;

  for (CartItem cartItem in _cart) {
    double itemTotal = cartItem.food.price;

    for (Addon addon in cartItem.selectedAddons) {
      itemTotal += addon.price;
    }
    total += itemTotal *cartItem.quantity;
  }
  return total;
}
// get total number of items in cart 
int getTotalItemCount() {
  int totalItemCount = 0;
  
  for (CartItem cartItem in _cart) {
    totalItemCount += cartItem.quantity;
  }
  return totalItemCount;
}



// clear cart
void clearCart() {
  _cart.clear();
  notifyListeners();
}


// helpers 

} 