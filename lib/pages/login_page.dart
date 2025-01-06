import 'package:flutter/material.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:chat_app/components/my_button.dart';

class LoginPage extends StatelessWidget {
  // email and pw text controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  LoginPage({super.key});

  // login method
  void login() {}

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
              "Welcome back, you've been missed!",
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

            const SizedBox(height: 25.0),
        
            // login button
            MyButton(
              text: "Login",
              onTap: login,
            ),

            const SizedBox(height: 25.0),
        
            // register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member? ",
                  style:
                    TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                Text(
                  "Register now",
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