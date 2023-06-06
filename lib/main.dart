import 'package:flutter/material.dart';
import 'package:tias/pages/dokumen.dart';
import 'package:tias/pages/login.dart';
import 'package:tias/pages/home_page.dart';
import 'package:tias/pages/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
