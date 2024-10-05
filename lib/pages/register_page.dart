import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/components/my_textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap,
    });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const SizedBox(height: 15),
            MyTextField(
              controller: confirmPasswordController,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 25),
            //login button
            MyButton(
              text: 'Register',
              onTap: () {
              },
            ),

            const SizedBox(height: 25),
            
            // register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already a member?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: 
                  Text('Login now')),
                
              ],
            ),
          ],
        ),
      )
    );
  }
}