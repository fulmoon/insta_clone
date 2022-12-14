import 'package:flutter/material.dart';
import 'package:instagram_clone/root_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //useMaterial3: true,
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        secondaryHeaderColor: Colors.black,
      ),
      home: const RootPage(),
    );
  }
}
