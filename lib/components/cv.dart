import 'package:flutter/material.dart';
import 'package:tias/pages/aturformat.dart';
import 'package:tias/pages/pendidikan.dart';
import 'package:tias/theme.dart';
import 'package:flutter/gestures.dart';

class DataCv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 18, 15, 0),
      child: Container(
        margin: EdgeInsets.only(left: 31),
        padding: EdgeInsets.fromLTRB(18, 15, 18, 15),
        width: 325.24,
        height: 93,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color(0x3f000000),
              offset: Offset(0, 4),
              blurRadius: 2,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame113113vv (4:30)
              margin: EdgeInsets.fromLTRB(
                0,
                0,
                37,
                0,
              ),
              width: 201,
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // cetakdokumenriwayathidupAVk (4:31)
                    margin: EdgeInsets.fromLTRB(
                      0,
                      0,
                      0,
                      14,
                    ),
                    child: Text(
                      'Cetak dokumen riwayat hidup',
                      style: TextStyle(
                        fontFamily: 'SF-Pro-Display',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.2575,
                        letterSpacing: -0.3000000119,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // frame11309TDx (4:32)
                    width: double.infinity,
                    height: 30,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupf16ezUn (8kUoJW4ipBjkFKZbKUf16E)
                          padding: EdgeInsets.fromLTRB(1.16, 8, 18, 6),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  // uilsettingvNS (4:33)
                                  margin: EdgeInsets.fromLTRB(0, 0, 8.56, 2),
                                  width: 12.28,
                                  height: 12.5,
                                  child: GestureDetector(
                                    child: Image.asset(
                                      ("assets/images/uil-setting.png"),
                                      width: 12.28,
                                      height: 12.5,
                                    ),
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  FormatCV()));
                                    },
                                  )),
                              GestureDetector(
                                // aturformatcvpii (4:35)
                                child: Text(
                                  'Atur format cv',
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Display',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575,
                                    letterSpacing: -0.3000000119,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          FormatCV()));
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // line29A1t (4:36)
                          margin: EdgeInsets.fromLTRB(0, 0, 6.2, 0),
                          width: 0.8,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xffc4c4c4),
                          ),
                        ),
                        Container(
                          // frame113105Pk (4:37)
                          margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
                          padding: EdgeInsets.fromLTRB(16.5, 5, 18, 3),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff7366e3),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // mdidrivedocumentaLW (4:38)
                                margin: EdgeInsets.fromLTRB(0, 0, 6.5, 2),
                                width: 9,
                                height: 9,
                                child: GestureDetector(
                                  child: Image.asset(
                                    ("assets/images/mdi-drive-document.png"),
                                    width: 9,
                                    height: 9,
                                  ),
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                FormatCV()));
                                  },
                                ),
                              ),
                              GestureDetector(
                                child: Text(
                                  // printcvg8e (4:40)
                                  'Print-cv',
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Display',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2575,
                                    letterSpacing: -0.3000000119,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          FormatCV()));
                                },
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
            Container(
              // group10964oj4 (4:41)
              width: 51.24,
              height: 48.93,
              child: Image.asset(
                ("assets/images/group-10964.png"),
                width: 51.24,
                height: 48.93,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
