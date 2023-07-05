import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Scholar extends StatefulWidget {
  const Scholar({super.key});

  @override
  State<Scholar> createState() => _ScholarState();
}

class _ScholarState extends State<Scholar> {
  final List<Map<String, dynamic>> _ListScholar = [
    {
      'Judul':
          'Influence of Character Education On Student Tolerance in Private Colleges',
      'Jurnal':
          'NVEO-NATURAL VOLATILES & ESSENTIAL OILS Journal | NVEO, 3934-3946, 2021',
      'Author': 'E Mujahidin, D Hafiduddin, RH Fitrah',
      'Tahun': '2021',
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
            itemCount: _ListScholar.length,
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
                      //                 child: Text('${_ListScholar[index]['']}'),
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
                          '${_ListScholar[index]['Judul']}',
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
                                "assets/images/vector-73e.png",
                                height: 10,
                                width: 10,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '${_ListScholar[index]['Jurnal']}',
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
                          margin: EdgeInsets.only(left: 70, right: 70),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Author :',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Colors.white),
                              ),
                              Text(
                                '${_ListScholar[index]['Author']}',
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
                                    Image.asset(
                                      "assets/images/vector-4kG.png",
                                      height: 10,
                                      width: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '${_ListScholar[index]['Tahun']}',
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
                                      '${_ListScholar[index]['Cited']}',
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
