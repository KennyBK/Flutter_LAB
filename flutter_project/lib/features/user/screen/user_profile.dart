import 'package:flutter/material.dart';
import 'package:flutter_project/features/user/widgets/my_circle_avatar.dart';
import 'package:flutter_project/features/user/widgets/my_list_tile.dart';
import 'package:flutter_project/features/user/widgets/my_switch_list_tile.dart';
import 'package:flutter_project/features/user/widgets/rounded_bottom_navigation_bar.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<StatefulWidget> createState() => UserProfileState();
}

class UserProfileState extends State<UserProfile> {
  bool isSwitched = false;
  List<BottomNavigationBarItem> bottomNavItems = const [
    BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Call"),
    BottomNavigationBarItem(
        icon: Icon(Icons.history_outlined), label: "History"),
    BottomNavigationBarItem(
        icon: Icon(Icons.account_circle_outlined), label: "Profile"),
  ];
  String avatarUri = "assets/images/my_avatar.jpg";

  void updateSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Profile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: ListView(
            children: [
              const SizedBox(
                height: 50,
              ),
              myCircleAvatar(AssetImage(avatarUri), "Trung Nguyen",
                  "nguyenpdthe164016@fpt.edu.vn"),
              const SizedBox(height: 40),
              Column(
                children: [
                  myListTile(
                    Icons.account_circle_outlined,
                    "My Account",
                    "Changes to your account details",
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.warning,
                          size: 25,
                          color: Colors.green,
                        ),
                        SizedBox(width: 40),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  myListTile(
                      Icons.account_circle_outlined,
                      "Saved Contact",
                      "Manage your saved contact",
                      const Icon(Icons.arrow_forward_ios)),
                  const SizedBox(height: 15),
                  MySwitchListTile(
                    initialValue: isSwitched,
                    onValueChanged: (newValue) {
                      updateSwitch(newValue);
                    },
                    icon: Icons.lock_outline,
                    title: "Face ID/Touch ID",
                    subtitle: "Manage your device security",
                  ),
                  const SizedBox(height: 15),
                  myListTile(
                      Icons.security_outlined,
                      "Two-Factor Authentication",
                      "Further secure your account for safety",
                      const Icon(Icons.arrow_forward_ios)),
                  const SizedBox(height: 15),
                  myListTile(
                      Icons.logout_outlined,
                      "Logout",
                      "Further secure your account for safety",
                      const Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: roundedBottomNavigationBa(bottomNavItems));
  }
}
