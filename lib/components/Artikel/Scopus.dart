import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Scopus extends StatefulWidget {
  const Scopus({super.key});

  @override
  State<Scopus> createState() => _ScopusState();
}

class _ScopusState extends State<Scopus> {
  final List<Map<String, dynamic>> _ListScopus = [
    {
      'Judul':
          'Water Tank Wudhu Monitoring System Design using Arduino and Telegram',
      'Jurnal':
          'International Journal of Advanced Computer Science and Applications',
      'Kategori': 'Q3 as Journal',
      'Author Order': '4 of 5',
      'Creator': 'Ritzkal',
      'Tahun': '2023',
      'Cited': '0 Cited'
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
            itemCount: _ListScopus.length,
            itemBuilder: (context, index) {
              // the list item - product
              return Container(
                  padding: const EdgeInsets.all(20),
                  margin:
                      const EdgeInsets.only(bottom: 10, right: 15, left: 15),
                  decoration: BoxDecoration(
                    color: HexColor("6A5BE2"),
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
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
                      //                 child: Text('${_ListScopus[index]['']}'),
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
                          '${_ListScopus[index]['Judul']}',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/vector-5Ep.png",
                                height: 10,
                                width: 10,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '${_ListScopus[index]['Kategori']}',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/vector-73e.png",
                                height: 10,
                                width: 10,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '${_ListScopus[index]['Jurnal']}',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 55, right: 55),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Center(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Author Order :',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      '${_ListScopus[index]['Author Order']}',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Center(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Creator :',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      '${_ListScopus[index]['Creator']}',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 55, right: 55),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Center(
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/images/vector-4kG.png",
                                      height: 10,
                                      width: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '${_ListScopus[index]['Tahun']}',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Center(
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/images/material-symbols-comment.png",
                                      height: 10,
                                      width: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '${_ListScopus[index]['Cited']}',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
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
