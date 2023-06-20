import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tias/Components/Pendidikan.dart/BahanAjar.dart';
import 'package:tias/Components/Pendidikan.dart/BimbinganMahasiswa.dart';
import 'package:tias/Components/Pendidikan.dart/Pengajaran.dart';
import 'package:tias/Components/Pendidikan.dart/Pengajaran.dart';
import 'package:tias/Components/Pendidikan.dart/PengujianMahasiswa.dart';
import 'package:tias/Components/Pendidikan.dart/TugasTambahan.dart';

class Pendidikan extends StatefulWidget {
  const Pendidikan({super.key});

  @override
  State<Pendidikan> createState() => _PendidikanState();
}

class _PendidikanState extends State<Pendidikan> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: HexColor("#FFFFFF"),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: HexColor("#FFFFFF"),
          title: Text(
            "Pelaksanaan Pendidikan",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "SF-Pro-Display",
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
        ),
        body: Column(
          children: const [
            TabBar(
              isScrollable: true,
              indicatorColor: Colors.purple,
              labelColor: Colors.purple,
              labelStyle: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700),
              unselectedLabelColor: Colors.grey, //For Selected tab
              //For Un-selected Tabs
              tabs: [
                Tab(
                  text: ('Pengajaran'),
                ),
                Tab(
                  text: ('Bimbingan Mahasiswa'),
                ),
                Tab(
                  text: ('Pengujian Mahasiswa'),
                ),
                Tab(
                  text: ('Bahan Ajar'),
                ),
                Tab(
                  text: ('Tugas Tambahan'),
                )
              ],
            ),
            Expanded(
                child: TabBarView(children: [
              Pengajaran(),
              BimbinganMahasiswa(),
              PengujianMahasiswa(),
              BahanAjar(),
              TugasTambahan()
            ]))
          ],
        ),
      ),
    );
  }
}
