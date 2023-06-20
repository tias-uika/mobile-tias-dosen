import 'package:flutter/material.dart';

class PengujianMahasiswa extends StatefulWidget {
  const PengujianMahasiswa({super.key});

  @override
  State<PengujianMahasiswa> createState() => _PengujianMahasiswaState();
}

class _PengujianMahasiswaState extends State<PengujianMahasiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengujian Mahasiswa"),
      ),
    );
  }
}
