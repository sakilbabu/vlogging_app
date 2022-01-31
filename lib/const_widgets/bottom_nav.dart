import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items:
    const [
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.add),
        label: 'Upload',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.chat),
        label: 'Chats',
      ),

    ],);
  }
}
