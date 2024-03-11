import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF817400),
        leading: Image.asset(
          'assets/images/profile.gif'),
      ),
      
    );
  }
}