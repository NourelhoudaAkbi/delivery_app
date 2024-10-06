import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {

  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabController
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      child : TabBar(
        controller: tabController,
        tabs: const [
          Tab(
            icon: Icon(Icons.home),
            text: 'Home',
          ),
          Tab(
            icon: Icon(Icons.favorite),
            text: 'Favorites',
          ),
          Tab(
            icon: Icon(Icons.person),
            text: 'Profile',
          ),
        ],
      )
    );
  }
}