import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ), //AppBar
      body: const Center(
        child: Text(
          "결과가 나올 부분",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
