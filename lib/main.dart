import 'package:flutter/material.dart';
import 'package:tias/Pages/SplashScreen.dart';
import 'package:tias/pages/ProfilDosen.dart';
import 'package:tias/pages/pendidikan.dart';
import 'package:tias/components/ProfilDosen.dart/EditProfil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProfilDosen());
  }
}
