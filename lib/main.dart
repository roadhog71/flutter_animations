import 'package:animations/screens/floating_action_button/ListPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter List Example',
      home: ListPage(), // Use the HomePage widget as the home page.
    );
  }
}
