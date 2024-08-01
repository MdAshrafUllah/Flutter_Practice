import 'package:custom_widget/data/users_data.dart';
import 'package:custom_widget/widget/custom_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Widget"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return customCard(
            id: users[index]['id'].toString(),
            name: users[index]['name'].toString(),
            gender: users[index]['gender'].toString(),
            trailingIcon: users[index]['gender'].toString() == "male"
                ? const Icon(Icons.male)
                : const Icon(Icons.female),
          );
        },
      ),
    );
  }
}
