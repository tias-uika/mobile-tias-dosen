import 'package:flutter/material.dart';
import 'package:tias/Pages/HomePage.dart';
import 'package:tias/Pages/Rekomendasi.dart';
import 'package:tias/Pages/Notifikasi.dart';
import 'package:tias/Pages/Profil.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  var Items = const [
    HomePage(),
    Rekomendasi(),
    Notifikasi(),
    Profil(),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Items[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: HexColor("#6A5BE2"),
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shield), label: 'Rekomendasi'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifikasi'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}
