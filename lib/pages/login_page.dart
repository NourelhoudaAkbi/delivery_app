

import 'package:delivery_app/components/my_button.dart';
import 'package:flutter/material.dart';
import '../components/my_textField.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
   LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.fastfood,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            //app slogan
            Text(
              'Food Delivery App',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 25),
            // email textfield
            MyTextField(
              controller: emailcontroller,
              hintText: 'Email',
              obscureText: false,
            ),
        const SizedBox(height: 15),
            //password  textfield
            MyTextField(
              controller: passwordcontroller,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 25),
            //login button
            MyButton(
              text: 'Login',
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ],
        ),
      )
    );
  }
}