import 'package:flutter/material.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Fav Screen",
          style: TextStyle(fontSize: 45),
        ),
      ),
    );
  }
}
