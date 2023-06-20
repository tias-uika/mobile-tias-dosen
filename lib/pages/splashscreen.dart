import 'package:flutter/material.dart';
import 'dart:async';
import 'package:hexcolor/hexcolor.dart';
import 'package:tias/Pages/LoginPage.dart';

// import 'package:TIAS/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 8);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginPage(
                  title: 'hallo',
                )),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#7B61FF"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 24.0),
            Center(
              child: Image.asset("assets/images/logotias.png"),
            )
          ],
        ),
      ),
    );
  }
}
