import 'package:flutter/material.dart';

class BahanAjar extends StatefulWidget {
  const BahanAjar({super.key});

  @override
  State<BahanAjar> createState() => _BahanAjarState();
}

class _BahanAjarState extends State<BahanAjar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bahan Ajar'),
      ),
    );
  }
}
