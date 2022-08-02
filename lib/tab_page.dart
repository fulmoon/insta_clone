import 'package:flutter/material.dart';
import 'package:instagram_clone/account_page.dart';
import 'package:instagram_clone/home_page.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int selectedIndex = 0;

  List pages = const [
    HomePage(),
    Text('page2'),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pages[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        onTap: _onItemTapped,
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'account'),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
