import 'package:flutter/material.dart';
import 'package:youtube_app/Screens/Home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context) => HomeScreen(),
      },
    );}}
