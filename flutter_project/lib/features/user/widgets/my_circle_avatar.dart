import 'package:flutter/material.dart';

Widget myCircleAvatar(AssetImage assetImage, String userName, String email) =>
    Column(
      children: [
        CircleAvatar(radius: 50, backgroundImage: assetImage),
        const SizedBox(height: 20),
        Text(userName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        Text(email, style: const TextStyle(fontSize: 10, color: Colors.grey)),
      ],
    );
