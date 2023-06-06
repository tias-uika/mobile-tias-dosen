import 'package:flutter/material.dart';
import 'package:tias/pages/artikel.dart';
import 'package:tias/pages/aturformat.dart';
import 'package:tias/pages/dokumen.dart';
import 'package:tias/pages/kompetensi.dart';
import 'package:tias/pages/kualifikasi.dart';
import 'package:tias/pages/pendidikan.dart';
import 'package:tias/pages/penelitian.dart';
import 'package:tias/pages/pengabdian.dart';
import 'package:tias/pages/penunjang.dart';

class Menus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(10, 19, 0, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(bottom: 20, left: 35),
            child: Text(
              "Kategori Pelaksanaan",
              style: TextStyle(
                  fontFamily: 'SF-Pro-Display',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.0659999996),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(45, 6, 30, 20),
            height: 220,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  //container menu
                  margin: EdgeInsets.fromLTRB(0, 0, 36, 0),
                  width: 51,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(2, 0, 1, 30),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              child: Container(
                                // Menu Pendidikan
                                margin: EdgeInsets.fromLTRB(5, 0, 0, 10),
                                padding: EdgeInsets.fromLTRB(5.5, 6, 6.5, 6),
                                decoration: BoxDecoration(
                                  color: Color(0xfff3aba7),
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                child: Center(
                                  child: SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset(
                                      ("assets/images/books-1.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Pendidikan()));
                              },
                            ),
                            Text(
                              'Pendidikan',
                              style: TextStyle(
                                fontFamily: 'SF-Pro-Display',
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                height: 1.3,
                                letterSpacing: 0.0659999996,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          // menu kompetensi
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                //container menu Kompetensi
                                margin: EdgeInsets.fromLTRB(6, 0, 0, 10),
                                padding: EdgeInsets.fromLTRB(5.5, 6, 6.5, 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffe3c2f5),
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                child: Center(
                                  child: SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset(
                                      ("assets/images/badge 1.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                // kompetensi3sU (4:71)
                                'Kompetensi',
                                style: TextStyle(
                                  fontFamily: 'SF-Pro-Display',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3,
                                  letterSpacing: 0.0659999996,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => Kompetensi()));
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  // Container Penelitian
                  margin: EdgeInsets.fromLTRB(0, 0, 34, 0),
                  width: 46,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                //logo penelitian
                                margin: EdgeInsets.fromLTRB(2.5, 0, 0, 10),
                                padding: EdgeInsets.fromLTRB(6, 6, 6, 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffe3c2f5),
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                child: Center(
                                  // labtool1hae (4:76)
                                  child: SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset(
                                      ("assets/images/lab-tool 1.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 1.5, 0),
                                child: Text(
                                  'Penelitian',
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Display',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3,
                                    letterSpacing: 0.0659999996,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => Penelitian()));
                        },
                      ),
                      Container(
                        // Container Menu Penunjang
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              child: Container(
                                // logo penunjang
                                margin: EdgeInsets.fromLTRB(4, 0, 0, 10),
                                padding: EdgeInsets.fromLTRB(6, 6, 6, 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffc2d3f5),
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                child: Center(
                                  child: SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset(
                                      ("assets/images/group 1.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Penunjang()));
                              },
                            ),
                            Text(
                              'Penunjang',
                              style: TextStyle(
                                fontFamily: 'SF-Pro-Display',
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                height: 1.3,
                                letterSpacing: 0.0659999996,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 36, 0),
                  width: 51,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // Container menu pengabdian
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(6, 0, 0, 10),
                                padding: EdgeInsets.fromLTRB(5.5, 6, 6.5, 6),
                                decoration: BoxDecoration(
                                  color: Color(0xfff5e9c2),
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                child: Center(
                                  // logo pengabdian
                                  child: SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset(
                                      ("assets/images/solidarity 1.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Pengabdian()));
                              },
                            ),
                            Text(
                              'Pengabdian',
                              style: TextStyle(
                                fontFamily: 'SF-Pro-Display',
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                height: 1.3,
                                letterSpacing: 0.0659999996,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 1.5, 0),
                        width: 42,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Container(
                                // Container menu artikel
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                padding: EdgeInsets.fromLTRB(8.5, 9, 8.5, 8),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfff3aba7),
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                child: Center(
                                  // logo artikel
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: Image.asset(
                                      ("assets/images/application 1.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        artikel()));
                              },
                            ),
                            Container(
                              // artikel5f4 (4:93)
                              margin: EdgeInsets.fromLTRB(0, 0, 3, 0),
                              child: Text(
                                'Artikel',
                                style: TextStyle(
                                  fontFamily: 'SF-Pro-Display',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3,
                                  letterSpacing: 0.0659999996,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // frame11325N8N (4:94)
                  width: 45,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // frame11316g94 (4:95)
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              child: Container(
                                // container menu Kualifikasi
                                margin: EdgeInsets.fromLTRB(3, 0, 0, 10),
                                padding: EdgeInsets.fromLTRB(6, 6, 6, 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffc2d3f5),
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                child: Center(
                                  // logo Kualifikasi
                                  child: SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset(
                                      ("assets/images/mortarboard 1.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Kualifikasi()));
                              },
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 1, 0),
                              child: Text(
                                'Kualifikasi',
                                style: TextStyle(
                                  fontFamily: 'SF-Pro-Display',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3,
                                  letterSpacing: 0.0659999996,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Container(
                                // Container menu Dokumen
                                margin: EdgeInsets.fromLTRB(2, 0, 0, 10),
                                padding: EdgeInsets.fromLTRB(6, 6, 6, 6),
                                decoration: BoxDecoration(
                                  color: Color(0xfff5e9c2),
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                child: Center(
                                  // logo dokumen
                                  child: SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset(
                                      ("assets/images/folders 1.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Dokumen()));
                              },
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                              child: Text(
                                'Dokumen',
                                style: TextStyle(
                                  fontFamily: 'SF-Pro-Display',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3,
                                  letterSpacing: 0.0659999996,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
