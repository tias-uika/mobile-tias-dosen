import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tias/components/Artikel/Garuda.dart';
import 'package:tias/components/Artikel/RAMA.dart';
import 'package:tias/components/Artikel/Scholar.dart';
import 'package:tias/components/Artikel/Scopus.dart';
import 'package:tias/components/Artikel/WebOfSience.dart';

class Artikel extends StatefulWidget {
  const Artikel({super.key});

  @override
  State<Artikel> createState() => _ArtikelState();
}

class _ArtikelState extends State<Artikel> {
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
            "Artikel",
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
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700),
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      text: ('Scopus'),
                    ),
                    Tab(
                      text: ('Web Of Sience'),
                    ),
                    Tab(
                      text: ('Garuda'),
                    ),
                    Tab(
                      text: ('Scholar'),
                    ),
                    Tab(
                      text: ('RAMA'),
                    ),
                  ]),
              Expanded(
                  child: TabBarView(
                children: <Widget>[
                  Scopus(),
                  WebOfSience(),
                  Garuda(),
                  Scholar(),
                  RAMA()
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
