import 'package:flutter/material.dart';

class Rekomendasi extends StatefulWidget {
  const Rekomendasi({super.key});

  @override
  State<Rekomendasi> createState() => _RekomendasiState();
}

class _RekomendasiState extends State<Rekomendasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rekomendasi"),
        automaticallyImplyLeading: false,
      ),
    );
  }
}
