import 'package:flutter/material.dart';

//step 8 - homescreen
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Our Products",
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
