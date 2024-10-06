import 'package:delivery_app/components/my_current_location.dart';
import 'package:delivery_app/components/my_description_box.dart';
import 'package:delivery_app/components/my_drawer.dart';
import 'package:delivery_app/components/my_sliver_app_bar.dart';
import 'package:delivery_app/components/my_tab_bar.dart';
import 'package:flutter/material.dart';


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
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
              ), // Divider
              // my current location
              const MyCurrentLocation(),
              // description box
              const MyDescriptionBox(),
            ],
          ), // Column
        ), // MySliverAppBar
      ],
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Text("data")
          ),
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Text("data")
          ),
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Text("data")
          ),
        ],
      )
    ), // NestedScrollView
  ); // Scaffold
}
  }
  