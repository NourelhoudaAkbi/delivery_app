import 'package:delivery_app/components/my_current_location.dart';
import 'package:delivery_app/components/my_description_box.dart';
import 'package:delivery_app/components/my_drawer.dart';
import 'package:delivery_app/components/my_food_tile.dart';
import 'package:delivery_app/components/my_sliver_app_bar.dart';
import 'package:delivery_app/components/my_tab_bar.dart';
import 'package:delivery_app/models/food.dart';
import 'package:delivery_app/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override

  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filtermenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List <Food> categoryMenu = _filtermenuByCategory(category, fullMenu);
      return GridView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 items per row
          mainAxisSpacing: 15.0, // Spacing between rows
          crossAxisSpacing: 15.0, // Spacing between items in a row
          childAspectRatio: 1.0, // Adjust the ratio based on item height/width
          ),
          itemBuilder: (context, index) {
            final food = categoryMenu[index];
            final onTap = () {};
            return FoodTile(onTap: onTap, food: food);
            },
            );
            }).toList();
        }


  Widget build(BuildContext context) {
      return Scaffold (
    drawer: MyDrawer(),
    body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        MySliverAppBar(
          title: MyTabBar(tabController: _tabController,),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Divider(
                indent: 25,
                endIndent: 25,
                color: Theme.of(context).colorScheme.secondary,
              ), 
              // my current location
              const MyCurrentLocation(),
              // description box
              const MyDescriptionBox(),
            ],
          ), 
        ), 
      ],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Consumer<Restaurant>(
          builder: (context, restaurant, child) => 
          TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
        ),
        ),
      ),
    ), 
  ); 
}
}
  