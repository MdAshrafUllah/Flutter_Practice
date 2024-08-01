import 'package:basicflutterapplication/data/items_data.dart';
import 'package:flutter/material.dart';

class ItemsListsScreen extends StatefulWidget {
  const ItemsListsScreen({super.key});

  @override
  State<ItemsListsScreen> createState() => _ItemsListsScreenState();
}

class _ItemsListsScreenState extends State<ItemsListsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All List"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(items[index]['id'].toString()),
            ),
            title: Text(items[index]['title'].toString()),
            subtitle: Text(items[index]['description'].toString()),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Center(child: Text(items[index]['title'].toString())),
                backgroundColor: Colors.blue,
                behavior: SnackBarBehavior.floating,
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ));
            },
          );
        },
      ),
    );
  }
}
