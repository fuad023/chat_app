import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:chat_app/themes/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("Settings"), centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey,
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8.0),
        ),
        margin: const EdgeInsets.all(25.0),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // dark mode
            const Text("Dark Theme"),
        
            // switch toggle
            CupertinoSwitch(
              value: Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
              onChanged: (value) =>
                     Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
            ),
          ],
        ),
      ),
    );
  }
}