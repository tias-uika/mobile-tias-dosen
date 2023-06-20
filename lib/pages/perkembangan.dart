import 'package:flutter/material.dart';

class Perkembangan extends StatefulWidget {
  const Perkembangan({super.key});

  @override
  State<Perkembangan> createState() => _PerkembanganState();
}

class _PerkembanganState extends State<Perkembangan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistik'),
      ),
    );
  }
}
