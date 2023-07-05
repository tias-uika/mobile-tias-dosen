import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Tes extends StatefulWidget {
  const Tes({super.key});

  @override
  State<Tes> createState() => _TesState();
}

class _TesState extends State<Tes> {
  final List<Map<String, dynamic>> _ListTes = [
    {
      'Nama TES': 'TOEP-TEFLIN PLTI',
      'Score': '71.00',
      'Lembaga': 'Pusat Layanan Tes Indonesia',
      'Tahun': '2019',
      'Status': 'Verified',
      'Penyelenggara': 'PLTI'
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
            itemCount: _ListTes.length,
            itemBuilder: (context, index) {
              // the list item - product
              return Card(

                  // decoration: BoxDecoration(
                  //   color: HexColor("6A5BE2"),
                  //   border: Border.all(color: Colors.grey),
                  //   borderRadius: BorderRadius.circular(5.0),
                  // ),
                  child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) => Container(
                      height: MediaQuery.of(context).size.height * 0.50,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(25.0),
                          topRight: const Radius.circular(25.0),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 50, left: 18, right: 18),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text('Nama Tes'),
                                ),
                                Expanded(
                                  child: Text(':'),
                                ),
                                Expanded(
                                  child: Text('${_ListTes[index]['Nama TES']}'),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text('Skor Tes'),
                                ),
                                Expanded(
                                  child: Text(':'),
                                ),
                                Expanded(
                                  child: Text('${_ListTes[index]['Score']}'),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text('Penyelenggara'),
                                ),
                                Expanded(
                                  child: Text(':'),
                                ),
                                Expanded(
                                  child: Text(
                                      '${_ListTes[index]['Penyelenggara']}'),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text('Tahun'),
                                ),
                                Expanded(
                                  child: Text(':'),
                                ),
                                Expanded(
                                  child: Text('${_ListTes[index]['Tahun']}'),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text('Status'),
                                ),
                                Expanded(
                                  child: Text(':'),
                                ),
                                Expanded(
                                  child: Text(
                                    '${_ListTes[index]['Status']}',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 6, 232, 22)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(children: [
                        Container(
                          height: 100.0,
                          width: double.infinity,
                          child: Image.asset(
                            'assets/images/group-11008-8JU.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  '${_ListTes[index]['Nama TES']}',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  right: 10,
                                  top: 10,
                                ),
                                padding: EdgeInsets.all(10),
                                height: 55,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 75, 28, 133)),
                                child: Text(
                                  '${_ListTes[index]['Score']}',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              )
                            ])
                      ]),
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                        height: 100.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${_ListTes[index]['Lembaga']}',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/vector-4kG.png",
                                          height: 10,
                                          width: 10,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Tahun',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '${_ListTes[index]['Tahun']}',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 7),
                                    height: 25,
                                    width: 75,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color.fromARGB(255, 6, 232, 22)),
                                    child: Center(
                                        child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            '${_ListTes[index]['Status']}',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 12,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    )),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ]),
              ));
            },
          ),
        ),
      ],
    ));
  }
}
