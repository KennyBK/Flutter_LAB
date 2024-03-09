import 'package:flutter/material.dart';

Widget myListTile(
        IconData leading, String title, String subtitle, Widget trailing) =>
    ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: const Color.fromRGBO(149, 187, 173, 0.15),
        child: Icon(leading, color: Colors.greenAccent),
      ),
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.grey, fontSize: 10),
      ),
      trailing: trailing,
    );
