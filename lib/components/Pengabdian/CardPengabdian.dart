import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CardPengabdian extends StatefulWidget {
  const CardPengabdian({super.key});

  @override
  State<CardPengabdian> createState() => _CardPengabdianState();
}

class _CardPengabdianState extends State<CardPengabdian> {
  final List<Map<String, dynamic>> _ListPengabdian = [
    {
      'Nama Kegiatan': 'PKM Webinar Awareness QMS ISO 9001....',
      'Lama Kegiatan': '1 Tahun',
      'Periode': '2020/2021'
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
            itemCount: _ListPengabdian.length,
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
                      //     height: MediaQuery.of(context).size.height * 0.40,
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
                      //                 child: Text(''),
                      //               ),
                      //               Expanded(
                      //                 child: Text(':'),
                      //               ),
                      //               Expanded(
                      //                 child:
                      //                     Text('${_ListPengabdian[index]['']}'),
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
                          '${_ListPengabdian[index]['Nama Kegiatan']}',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Lama Kegiatan',
                          style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 7),
                                height: 25,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(
                                        255, 187, 187, 187)),
                                child: Center(
                                    child: Row(
                                  children: <Widget>[
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Text(
                                        '${_ListPengabdian[index]['Lama Kegiatan']}',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                )),
                              ),
                              Text(
                                '${_ListPengabdian[index]['Periode']}',
                                style: const TextStyle(
                                    fontSize: 12.0, color: Colors.white),
                              ),
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
