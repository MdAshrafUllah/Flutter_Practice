import 'package:basicflutterapplication/Screen/items_list_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Xentro"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ItemsListsScreen(),
              )),
          child: const Text("Show List"),
        ),
      ),
    );
  }
}
