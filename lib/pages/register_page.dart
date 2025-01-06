import 'package:flutter/material.dart';

import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  // email and pw text controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  RegisterPage({super.key});

  // register method
  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.message,
              size: 60.0,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(height: 50.0),
        
            // welcome back message
            Text(
              "Let's create an account for you",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16.0,
              ),
            ),

            const SizedBox(height: 25.0),
        
            // email textfield
            MyTextField(
              hintText: "Email",
              obscureText: false,
              controller: _emailController,
            ),

            const SizedBox(height: 10.0),
        
            // pw textfield
            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: _pwController,
            ),

            const SizedBox(height: 10.0),
        
            // confirm pw textfield
            MyTextField(
              hintText: "Confirm password",
              obscureText: true,
              controller: _confirmPwController,
            ),

            const SizedBox(height: 25.0),
        
            // login button
            MyButton(
              text: "Register",
              onTap: register,
            ),

            const SizedBox(height: 25.0),
        
            // register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style:
                    TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                Text(
                  "Login now",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}