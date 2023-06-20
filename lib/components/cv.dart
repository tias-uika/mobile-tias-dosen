import 'package:flutter/material.dart';
//import 'package:tias/pages/aturformat.dart';

import 'package:flutter/gestures.dart';
import 'package:tias/Pages/FormatCv.dart';

class DataCv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 18, 15, 0),
      child: Container(
        width: double.infinity,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                0,
                0,
                37,
                0,
              ),
              width: 210,
              height: double.infinity,
              child: Column(
                children: [
                  Container(
                    // cetakdokumenriwayathidupAVk (4:31)
                    margin: EdgeInsets.fromLTRB(
                      18,
                      15,
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
                    width: double.infinity,
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // autogroupf16ezUn (8kUoJW4ipBjkFKZbKUf16E)
                          padding: EdgeInsets.fromLTRB(18, 8, 10, 6),
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
                                                  FormatCv()));
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
                                          FormatCv()));
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
                          padding: EdgeInsets.fromLTRB(16.5, 5, 10, 3),
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
                                                FormatCv()));
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
                                          FormatCv()));
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 18),
              // group10964oj4 (4:41)

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
