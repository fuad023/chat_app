import 'package:flutter/material.dart';
import 'package:chat_app/auth/auth_service.dart';
import 'package:chat_app/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void logout() {
    // get auth service
    final auth = AuthService();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          // logout button
          IconButton(onPressed: logout, icon: const Icon(Icons.logout))
        ],

      ),
      drawer: const MyDrawer(),
    );
  }
}