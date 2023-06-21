import 'package:flutter/material.dart';
import 'package:tias/Pages/Pendidikan.dart';
import 'package:tias/Pages/SplashScreen.dart';
import 'package:tias/Pages/dokumen.dart';
import 'package:tias/components/BottomNavigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BottomNavigator());
  }
}
