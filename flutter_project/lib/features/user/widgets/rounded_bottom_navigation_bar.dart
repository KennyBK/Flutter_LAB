import 'package:flutter/material.dart';

Widget roundedBottomNavigationBa() => Container(
  decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 5,
            offset: const Offset(0,3)
        )
      ]
  ),
  child: ClipRRect(
    borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
    child: BottomNavigationBar(
      currentIndex: 3,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.green,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Call"),
        BottomNavigationBarItem(
            icon: Icon(Icons.history_outlined), label: "History"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined), label: "Profile"),
      ],
    ),
  )
);