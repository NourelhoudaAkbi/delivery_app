

import 'package:delivery_app/auth/login_or_register.dart';
import 'package:delivery_app/models/restaurant.dart';
import 'package:delivery_app/pages/login_page.dart';
import 'package:delivery_app/pages/register_page.dart';
import 'package:delivery_app/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
      child: const MyApp(),
    ),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final themeData = themeProvider.themeData;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  const LoginOrRegister(),
      theme: themeData,
    
    );
  }
}