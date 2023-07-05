import 'package:flutter/material.dart';
import 'package:tias/Pages/Artikel.dart';
import 'package:tias/Pages/LoginPage.dart';
import 'package:tias/Pages/Pendidikan.dart';
import 'package:tias/Pages/SplashScreen.dart';
import 'package:tias/Pages/dokumen.dart';
import 'package:tias/components/BottomNavigator.dart';
import 'package:tias/pages/HomePage.dart';
import 'package:tias/pages/Rekomendasi.dart';
import 'package:tias/pages/kompetensi.dart';
import 'package:tias/pages/kualifikasi.dart';
import 'package:tias/pages/penelitian.dart';
import 'package:tias/pages/pengabdian.dart';
import 'package:tias/pages/penunjang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
