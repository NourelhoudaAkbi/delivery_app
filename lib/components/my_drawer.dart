import 'package:delivery_app/components/my_drawer_tile.dart';
import 'package:delivery_app/pages/setting_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  const MyDrawer({super.key});
  @override
  Widget build (BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child:  Column (
        children: [
          // app logo
          const Padding(
            padding: EdgeInsets.only(top: 100),
            child: Icon(
              color: Color.fromARGB(255, 193, 69, 66),
              Icons.fastfood,
              size: 80,
              ),
          ),
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Divider(
              color: Color.fromARGB(255, 178, 173, 173),
            ),
          ),

          // home list tile
          MyDrawerTile(text: "H O M E", icon: Icons.home, onTap: () => Navigator.pop(context)),
          // settings list tile
          MyDrawerTile(text: "S E T T I N G S", icon: Icons.settings, 
          onTap: () => Navigator.push(context, 
          MaterialPageRoute(
            builder: (context) => const SettingsPage()))),
          // spacer 
          const Spacer(),
          // logout list tile
          MyDrawerTile(text: "L O G O U T", icon: Icons.logout, 
          onTap: () {}),
          const SizedBox(height: 30,)
        ],
      ), // Column
    ); // Drawer
  }
}