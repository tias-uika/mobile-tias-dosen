import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Penghargaan extends StatefulWidget {
  const Penghargaan({super.key});

  @override
  State<Penghargaan> createState() => _PenghargaanState();
}

class _PenghargaanState extends State<Penghargaan> {
  final List<Map<String, dynamic>> _ListPenghargaan = [
    {
      'Nama': 'Pengerjaan Proyek Tercepat',
      'Perusahaan': 'PT. Terang Bulan Abadi ',
      'Tanggal': 'Tahun 2022'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 8),
        ),
        // The list of products
        Expanded(
          child: ListView.builder(
            itemCount: _ListPenghargaan.length,
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
                      //                     '${_ListPenghargaan[index]['SKS']}'),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${_ListPenghargaan[index]['Nama']}',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 7),
                              height: 25,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      const Color.fromARGB(255, 187, 187, 187)),
                              child: Container(
                                  child: Row(
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "Piagam",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              )),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          '${_ListPenghargaan[index]['Perusahaan']}',
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
                                '${_ListPenghargaan[index]['Tanggal']}',
                                style: const TextStyle(
                                    fontSize: 12.0, color: Colors.white),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 7),
                                height: 25,
                                width: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Center(
                                    child: Row(
                                  children: <Widget>[
                                    Center(
                                      child: Text(
                                        "Tidak Sesuai PO BKD 2021",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                            color: Colors.red),
                                      ),
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
    ));
  }
}
