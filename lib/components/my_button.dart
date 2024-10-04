import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final Function()? onTap;
  final String text;

  const MyButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Theme.of(context).colorScheme.inversePrimary,
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).colorScheme.tertiary,
          fontSize: 18,
        ),
      ),
    );
  }
}