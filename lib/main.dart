import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Theme/themeData.dart';
import 'package:whatsapp_clone/screens/homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: basicTheme(),
      home: HomeScreen(),
    );
  }
}
