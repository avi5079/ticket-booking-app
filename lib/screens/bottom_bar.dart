import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Tickets"),
      ),
      body: const Center(child: Text("My body")),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.maps_home_work_sharp),
            label: "home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Seach"),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket), label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

// Scaffold gives like a skeleton
// when we use a scaffold the colors shows up on the screen
// BottomNavigationBar takes a List<BottomNavigationBarItem> not any kind of itme

