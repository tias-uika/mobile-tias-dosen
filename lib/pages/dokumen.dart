import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:hexcolor/hexcolor.dart';

class Dokumen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: Text("Riwayat Dokumen Pribadi"),
          backgroundColor: HexColor("#FFFFFF"),
          titleTextStyle: TextStyle(
              fontFamily: "SF-Pro-Display-Bold",
              color: HexColor("#000000"),
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
        body: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.fromLTRB(19, 12, 19, 10),
          width: double.infinity,
          height: 800,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.fromLTRB(20, 9, 20, 9),
              width: double.infinity,
              height: 117,
              decoration: BoxDecoration(
                color: Color(0xff6a5be2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Text(
                      "SK JAD Fitrah",
                      style: TextStyle(
                        fontFamily: "SF-Pro-Display",
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        letterSpacing: -0.3000000119,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupnodx1Zx (EZUA4nRfzpRn4eABgJNodx)
                    width: double.infinity,
                    height: 39,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame54KKk (26:192)
                          margin: EdgeInsets.fromLTRB(0, 0, 69, 0),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // skjabatanfungsionalpGW (26:181)
                                'SK Jabatan Fungsional',
                                style: TextStyle(
                                  fontFamily: "SF-Pro-Display",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                  letterSpacing: -0.3000000119,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Text(
                                // diunggah23juli20208Y6 (26:182)
                                'Diunggah 23 Juli 2020',
                                style: TextStyle(
                                  fontFamily: "SF-Pro-Display",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                  letterSpacing: -0.3000000119,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group11017qxJ (235:496)
                          margin: EdgeInsets.fromLTRB(40, 9, 0, 5),
                          width: 85,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffaaacf0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Download',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "SF-Pro-Display",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                letterSpacing: -0.3000000119,
                                color: Color(0xffffffff),
                              ),
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
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.fromLTRB(20, 9, 20, 9),
              width: double.infinity,
              height: 117,
              decoration: BoxDecoration(
                color: Color(0xff6a5be2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Text(
                      "KTP Fitrah",
                      style: TextStyle(
                        fontFamily: "SF-Pro-Display",
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        letterSpacing: -0.3000000119,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupnodx1Zx (EZUA4nRfzpRn4eABgJNodx)
                    width: double.infinity,
                    height: 39,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame54KKk (26:192)
                          margin: EdgeInsets.fromLTRB(0, 0, 69, 0),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // skjabatanfungsionalpGW (26:181)
                                'Kartu Tanda Penduduk',
                                style: TextStyle(
                                  fontFamily: "SF-Pro-Display",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                  letterSpacing: -0.3000000119,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Text(
                                // diunggah23juli20208Y6 (26:182)
                                'Diunggah 11 Maret 2019',
                                style: TextStyle(
                                  fontFamily: "SF-Pro-Display",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                  letterSpacing: -0.3000000119,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group11017qxJ (235:496)
                          margin: EdgeInsets.fromLTRB(40, 9, 0, 5),
                          width: 85,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffaaacf0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Download',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "SF-Pro-Display",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                letterSpacing: -0.3000000119,
                                color: Color(0xffffffff),
                              ),
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
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.fromLTRB(20, 9, 20, 9),
              width: double.infinity,
              height: 117,
              decoration: BoxDecoration(
                color: Color(0xff6a5be2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Text(
                      "KK Fitrah",
                      style: TextStyle(
                        fontFamily: "SF-Pro-Display",
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        letterSpacing: -0.3000000119,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 39,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame54KKk (26:192)
                          margin: EdgeInsets.fromLTRB(0, 0, 69, 0),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // skjabatanfungsionalpGW (26:181)
                                'Kartu Keluarga',
                                style: TextStyle(
                                  fontFamily: "SF-Pro-Display",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                  letterSpacing: -0.3000000119,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Text(
                                // diunggah23juli20208Y6 (26:182)
                                'Diunggah 11 Maret 2019',
                                style: TextStyle(
                                  fontFamily: "SF-Pro-Display",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                  letterSpacing: -0.3000000119,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group11017qxJ (235:496)
                          margin: EdgeInsets.fromLTRB(56, 9, 0, 5),
                          width: 85,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffaaacf0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Download',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "SF-Pro-Display",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                letterSpacing: -0.3000000119,
                                color: Color(0xffffffff),
                              ),
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
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.fromLTRB(20, 9, 20, 9),
              width: double.infinity,
              height: 117,
              decoration: BoxDecoration(
                color: Color(0xff6a5be2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Text(
                      "NPWP Fitrah",
                      style: TextStyle(
                        fontFamily: "SF-Pro-Display",
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        letterSpacing: -0.3000000119,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupnodx1Zx (EZUA4nRfzpRn4eABgJNodx)
                    width: double.infinity,
                    height: 39,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame54KKk (26:192)
                          margin: EdgeInsets.fromLTRB(0, 0, 69, 0),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // skjabatanfungsionalpGW (26:181)
                                'NPWP',
                                style: TextStyle(
                                  fontFamily: "SF-Pro-Display",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                  letterSpacing: -0.3000000119,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Text(
                                // diunggah23juli20208Y6 (26:182)
                                'Diunggah 17 Februari 2019',
                                style: TextStyle(
                                  fontFamily: "SF-Pro-Display",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                  letterSpacing: -0.3000000119,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group11017qxJ (235:496)
                          margin: EdgeInsets.fromLTRB(40, 9, 0, 5),
                          width: 85,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffaaacf0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Download',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "SF-Pro-Display",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                letterSpacing: -0.3000000119,
                                color: Color(0xffffffff),
                              ),
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
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.fromLTRB(20, 9, 20, 9),
              width: double.infinity,
              height: 117,
              decoration: BoxDecoration(
                color: Color(0xff6a5be2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Text(
                      "KK FF",
                      style: TextStyle(
                        fontFamily: "SF-Pro-Display",
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        letterSpacing: -0.3000000119,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 39,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame54KKk (26:192)
                          margin: EdgeInsets.fromLTRB(0, 0, 69, 0),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // skjabatanfungsionalpGW (26:181)
                                'Kartu Keluarga',
                                style: TextStyle(
                                  fontFamily: "SF-Pro-Display",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                  letterSpacing: -0.3000000119,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Text(
                                // diunggah23juli20208Y6 (26:182)
                                'Diunggah 15 Februari 2019',
                                style: TextStyle(
                                  fontFamily: "SF-Pro-Display",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                  letterSpacing: -0.3000000119,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group11017qxJ (235:496)
                          margin: EdgeInsets.fromLTRB(40, 9, 0, 5),
                          width: 85,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffaaacf0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Download',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "SF-Pro-Display",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                letterSpacing: -0.3000000119,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        )));
  }
}
