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
      appBar: AppBar(title: const Text("Astrology App")),
      body: _pages[_selected],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (e) => setState(() => _selected = e),
        currentIndex: _selected,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: "Chat",
            icon: Icon(Icons.message),
            activeIcon: Icon(Icons.message_outlined),
          ),
          BottomNavigationBarItem(
            label: "Call",
            icon: Icon(Icons.phone),
            activeIcon: Icon(Icons.phone_outlined),
          ),
        ],
      ),
    );
  }
}
