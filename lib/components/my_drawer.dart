import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build (BuildContext context) {
    return Drawer(
      backgroundColor: Theme. of (context).colorScheme.background,
      child: const Column (
        children: [
          // app logo
          Icon(
            Icons.lock_open_rounded,
            size: 40,
            )

          // home list tile

          // settings list tile

          // logout list tile

        ],
      ), // Column
    ); // Drawer
  }
}