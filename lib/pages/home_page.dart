import 'package:flutter/material.dart';
import 'package:tias/components/leaderbord.dart';
import 'package:tias/components/update.dart';
import 'package:tias/components/user.dart';
import 'package:tias/components/menu.dart';
import 'package:tias/components/statistik.dart';
import 'package:tias/components/cv.dart';
import 'package:tias/components/update.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shield), label: 'Rekomendasi'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifikasi'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Container(
                height: 143,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Background.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  User(),
                  DataCv(),
                  Menus(),
                  Statistik(),
                  Leaderboard(),
                  UpdateTerbaru(),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
