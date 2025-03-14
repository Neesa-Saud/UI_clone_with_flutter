import 'package:app1/uiclone.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI Widgets',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.purple,
      ),
      home: UiClone(),
    );
  }
}
