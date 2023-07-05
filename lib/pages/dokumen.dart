import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tias/models/DokumenModels.dart';

class Dokumen extends StatefulWidget {
  const Dokumen({super.key});

  @override
  State<Dokumen> createState() => _DokumenState();
}

class _DokumenState extends State<Dokumen> {
  final List<Map<String, dynamic>> _listDokumen = [
    {
      'Nama': 'SK JAD Fitrah',
      'Keterangan': 'SK Jabatan Fungsional',
      'Tanggal': 'Diunggah 23 Juli 2020'
    },
  ];
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
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 8),
          ),
          // The list of products
          Expanded(
            child: ListView.builder(
              itemCount: _listDokumen.length,
              itemBuilder: (context, index) {
                // the list item - product
                return Container(
                    padding: const EdgeInsets.all(20),
                    margin:
                        const EdgeInsets.only(bottom: 10, right: 15, left: 15),
                    decoration: BoxDecoration(
                      color: HexColor("6A5BE2"),
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        // showModalBottomSheet(
                        //   context: context,
                        //   isScrollControlled: true,
                        //   backgroundColor: Colors.transparent,
                        //   builder: (context) => Container(
                        //     height: MediaQuery.of(context).size.height * 0.75,
                        //     decoration: new BoxDecoration(
                        //       color: Colors.white,
                        //       borderRadius: new BorderRadius.only(
                        //         topLeft: const Radius.circular(25.0),
                        //         topRight: const Radius.circular(25.0),
                        //       ),
                        //     ),
                        //     child: Container(
                        //       margin:
                        //           EdgeInsets.only(top: 50, left: 18, right: 18),
                        //       child: Column(
                        //         mainAxisSize: MainAxisSize.min,
                        //         children: <Widget>[
                        //           Row(
                        //             mainAxisAlignment: MainAxisAlignment.center,
                        //             mainAxisSize: MainAxisSize.max,
                        //             children: [
                        //               Expanded(
                        //                 child: Text('SKS Total Persubstansi'),
                        //               ),
                        //               Expanded(
                        //                 child: Text(':'),
                        //               ),
                        //               Expanded(
                        //                 child: Text(
                        //                     '${_listDokumen[index]['SKS']}'),
                        //               )
                        //             ],
                        //           ),
                        //           SizedBox(
                        //             height: 15,
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '${_listDokumen[index]['Nama']}',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            '${_listDokumen[index]['Keterangan']}',
                            style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '${_listDokumen[index]['Tanggal']}',
                                  style: const TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 7),
                                  height: 25,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(155, 224, 192, 192),
                                  ),
                                  child: Center(
                                      child: Row(
                                    children: <Widget>[
                                      Text(
                                        "Download",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ],
                                  )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
