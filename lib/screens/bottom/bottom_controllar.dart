import 'package:chat_app_ui/screens/bottom/bottom_bar.dart';
import 'package:chat_app_ui/screens/chats/chats_screen.dart';
import 'package:flutter/material.dart';

class BottomNavController extends StatefulWidget {
  static final List<Widget> _widgetsOptions = <Widget>[
    ChatsScreen(),
    Center(child: Text("People") ),
    Center(child: Text("Call")),
    Center(child: Text("Profile")),
  ];

  const BottomNavController({Key? key}) : super(key: key);

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavController._widgetsOptions[_selectedIndex],
      bottomNavigationBar: BottomBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
