import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final void Function(int) onTap;
  final int currentIndex;

  const BottomBar({Key? key, required this.onTap, required this.currentIndex})
      : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.message), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        BottomNavigationBarItem(
            icon: CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage("assets/images/user_2.png")),
            label: "Profile"),
      ],
    );
  }
}
