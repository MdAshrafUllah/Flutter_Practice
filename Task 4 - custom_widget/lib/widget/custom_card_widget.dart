import 'package:flutter/material.dart';

Widget customCard(
    {String? id, String? name, String? gender, Icon? trailingIcon}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Text("$id"),
        ),
        title: Text("$name"),
        subtitle: Text("Gender: $gender"),
        trailing: trailingIcon,
      ),
    ),
  );
}
