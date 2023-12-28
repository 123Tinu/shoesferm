import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Settings Screen",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 50),
        ),
      ),
    );
  }
}
