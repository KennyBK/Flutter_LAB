import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<StatefulWidget> createState() => UserProfileState();
}

class UserProfileState extends State<UserProfile> {
  bool isSwitched = false;

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
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Column(children: [
                  CircleAvatar(
                    radius: 50,
                    child: Icon(
                      Icons.person,
                      size: 40,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Trung Nguyen",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "nguyenpdthe164016@fpt.edu.vn",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ]),
              ),
              const SizedBox(height: 40),
              Container(
                margin: const EdgeInsets.only(
                  left: 15,
                ),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    const ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromRGBO(149, 187, 173, 0.15),
                        child: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.greenAccent,
                        ),
                      ),
                      title: Text("My Account"),
                      subtitle: Text("Changes to your account details"),
                      trailing: Row(
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
                    const ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromRGBO(149, 187, 173, 0.15),
                        child: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.greenAccent,
                        ),
                      ),
                      title: Text("Saved Contact"),
                      subtitle: Text("Manage your saved contact"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    const SizedBox(height: 15),
                    SwitchListTile(
                      secondary: const CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromRGBO(149, 187, 173, 0.15),
                        child: Icon(
                          Icons.lock_outline,
                          color: Colors.greenAccent,
                        ),
                      ),
                      title: const Text("Face ID/Touch ID"),
                      subtitle: const Text("Manage your device security"),
                      value: isSwitched,
                      onChanged: (bool value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                    ),
                    const SizedBox(height: 15),
                    const ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromRGBO(149, 187, 173, 0.15),
                        child: Icon(
                          Icons.security_outlined,
                          color: Colors.greenAccent,
                        ),
                      ),
                      title: Text("Two-Factor Authentication"),
                      subtitle: Text("Further secure your account for safety"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    const SizedBox(height: 15),
                    const ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromRGBO(149, 187, 173, 0.15),
                        child: Icon(
                          Icons.logout_outlined,
                          color: Colors.greenAccent,
                        ),
                      ),
                      title: Text("Logout"),
                      subtitle: Text("Further secure your account for safety"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                )
              ]),
          child: BottomAppBar(
            elevation: 0,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Column(
                      children: [
                        Icon(Icons.home_outlined),
                        Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        )
                      ],
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Column(
                      children: [
                        Icon(Icons.phone),
                        Text(
                          "Call",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        )
                      ],
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Column(
                      children: [
                        Icon(Icons.history_outlined),
                        Text(
                          "History",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        )
                      ],
                    )),
                IconButton(
                  onPressed: () {},
                  icon: const Column(
                    children: [
                      Icon(Icons.account_circle_outlined),
                      Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      )
                    ],
                  ),
                  color: Colors.greenAccent,
                )
              ],
            ),
          ),
        ));
  }
}
