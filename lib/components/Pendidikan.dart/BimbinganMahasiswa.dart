import 'package:flutter/material.dart';

class BimbinganMahasiswa extends StatefulWidget {
  const BimbinganMahasiswa({super.key});

  @override
  State<BimbinganMahasiswa> createState() => _BimbinganMahasiswaState();
}

class _BimbinganMahasiswaState extends State<BimbinganMahasiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bimbingan Mahasiswa")),
    );
  }
}
