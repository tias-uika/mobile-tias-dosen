import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tias/components/Penunjang/AnggotaProfesi.dart';
import 'package:tias/components/Penunjang/Penghargaan.dart';

class Penunjang extends StatefulWidget {
  const Penunjang({super.key});

  @override
  State<Penunjang> createState() => _PenunjangState();
}

class _PenunjangState extends State<Penunjang> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: HexColor("#FFFFFF"),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: HexColor("#FFFFFF"),
          title: Text(
            "Penunjang",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "SF-Pro-Display",
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
        ),
        body: Container(
          width: double.infinity,
          color: HexColor("#FFFFFF"),
          child: Column(
            children: [
              TabBar(
                  isScrollable: true,
                  indicatorColor: HexColor("#6A5BE2"),
                  labelColor: HexColor("#6A5BE2"),
                  labelStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700),
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      text: ('Anggota Profesi'),
                    ),
                    Tab(
                      text: ('Penghargaan'),
                    ),
                  ]),
              Expanded(
                  child: TabBarView(
                children: <Widget>[AnggotaProfesi(), Penghargaan()],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
