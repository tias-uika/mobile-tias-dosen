import 'package:flutter/material.dart';

class Pengabdian extends StatefulWidget {
  const Pengabdian({super.key});

  @override
  State<Pengabdian> createState() => _PengabdianState();
}

class _PengabdianState extends State<Pengabdian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengabdian"),
      ),
    );
  }
}
