import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tias/Components/Pendidikan.dart/BahanAjar.dart';
import 'package:tias/Components/Pendidikan.dart/BimbinganMahasiswa.dart';
import 'package:tias/Components/Pendidikan.dart/Pengajaran.dart';
import 'package:tias/Components/Pendidikan.dart/PengujianMahasiswa.dart';
import 'package:tias/Components/Pendidikan.dart/TugasTambahan.dart';

class Pendidikan extends StatefulWidget {
  const Pendidikan({super.key});

  @override
  State<Pendidikan> createState() => _PendidikanState();
}

class _PendidikanState extends State<Pendidikan> {
  Icon cusIcon = Icon(
    Icons.search,
    color: Colors.black,
  );
  Widget cusSearchBar = Text(
    "Pelaksanaan Pendidikan",
    style: TextStyle(color: Colors.black),
  );
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
          title: cusSearchBar,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  if (this.cusIcon.icon == Icons.search) {
                    this.cusIcon = Icon(
                      Icons.cancel,
                      color: Colors.black,
                    );
                    this.cusSearchBar = TextField(
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                        iconColor: Colors.black,
                        border: InputBorder.none,
                        hintText: "Search",
                      ),
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    );
                  } else {
                    this.cusIcon = Icon(
                      Icons.search,
                      color: Colors.black,
                    );
                    this.cusSearchBar = Text(
                      "Pelaksanaan Pendidikan",
                      style: TextStyle(color: Colors.black),
                    );
                  }
                });
              },
              icon: cusIcon,
            ),
          ],
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
