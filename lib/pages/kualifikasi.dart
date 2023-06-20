import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Kualifikasi extends StatefulWidget {
  const Kualifikasi({super.key});

  @override
  State<Kualifikasi> createState() => _KualifikasiState();
}

class _KualifikasiState extends State<Kualifikasi> {
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
              "Kompetensi",
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
            padding: EdgeInsets.only(left: 12),
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
                    unselectedLabelColor: Colors.grey, //For Selected tab
                    //For Un-selected Tabs
                    tabs: [
                      Tab(
                        text: ('Pendidikan Formal'),
                      ),
                      Tab(
                        text: ('Riwayat Pekerjaan'),
                      ),
                    ]),
              ],
            ),
          )),
    );
  }
}
