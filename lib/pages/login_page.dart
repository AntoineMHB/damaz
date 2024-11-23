import 'package:damaz/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // here we access those different colors from the theme
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_clock_rounded,
              size: 100,  
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),
        
            // message, app slogan
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),),

              const SizedBox(height: 25),
        
            // email textfield
            MyTextfield(
              controller: emailController, 
              hintText: "Email", 
              obscureText: false,
              ),

              const SizedBox(height: 10),

            // password textfield
            MyTextfield(
              controller: passwordController, 
              hintText: "Password", 
              obscureText: true,
              ),
        
            // sign in button
        
            // not a member? register now
          ],
        ),
      ),
    );
  }
}