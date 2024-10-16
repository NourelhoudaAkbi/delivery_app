

import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/pages/home_page.dart';
import 'package:delivery_app/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/my_textField.dart';

class LoginPage extends StatefulWidget {

  final void Function()? onTap;
  
  const LoginPage({
    super.key, 
    required this.onTap
    });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
    void login() {
    // auth logic
    // navigation
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      )
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // logo
            const Icon(
              Icons.fastfood,
              size: 100,
              color: Color.fromARGB(255, 193, 69, 66),),

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
                login();
              },
            ),

            const SizedBox(height: 25),
            // register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Register now')
                  ),
              ],
            ),
          ],
        ),
      )
    );
  }
}