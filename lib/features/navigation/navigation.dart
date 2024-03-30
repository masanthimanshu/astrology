import 'package:astrology/screens/call/call_screen.dart';
import 'package:astrology/screens/chat/chat_screen.dart';
import 'package:astrology/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final List<Widget> _pages = const [HomeScreen(), ChatScreen(), CallScreen()];

  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Astrology App"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_outlined),
          ),
        ],
      ),
      body: _pages[_selected],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (e) => setState(() => _selected = e),
        currentIndex: _selected,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: "Chat",
            activeIcon: Icon(Icons.message),
            icon: Icon(Icons.message_outlined),
          ),
          BottomNavigationBarItem(
            label: "Call",
            activeIcon: Icon(Icons.phone),
            icon: Icon(Icons.phone_outlined),
          ),
        ],
      ),
    );
  }
}
