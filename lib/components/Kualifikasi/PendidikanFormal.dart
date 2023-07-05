import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PendidikanFormal extends StatefulWidget {
  const PendidikanFormal({super.key});

  @override
  State<PendidikanFormal> createState() => _PendidikanFormalState();
}

class _PendidikanFormalState extends State<PendidikanFormal> {
  final List<Map<String, dynamic>> _ListPendidikanFormal = [
    {
      'Nama': 'Institut Pertanian Bogor',
      'Strata': 'S1 - Ilmu Komputer',
      'Tahun': '2012',
      'Gelar Akademik': 'S.Kom',
      'Jenjang Studi': 'S1',
      'Bidang Studi': 'Ilmu Komputer',
      'Perguruan Tinggi': 'Institut Pertanian Bogor',
      'Tanggal Masuk': '2007',
      'Tahun Lulus': '2012',
      'Nomor Induk': 'G640470109'
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
            itemCount: _ListPendidikanFormal.length,
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
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) => Container(
                          height: MediaQuery.of(context).size.height * 0.75,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(25.0),
                              topRight: const Radius.circular(25.0),
                            ),
                          ),
                          child: Container(
                            margin:
                                EdgeInsets.only(top: 50, left: 18, right: 18),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Text('Jenjang Studi'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListPendidikanFormal[index]['Jenjang Studi']}'),
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
                                      child: Text('Gelar Akademik'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListPendidikanFormal[index]['Gelar Akademik']}'),
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
                                      child: Text('Bidang Studi'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListPendidikanFormal[index]['Bidang Studi']}'),
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
                                      child: Text('Perguruan Tinggi'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListPendidikanFormal[index]['Perguruan Tinggi']}'),
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
                                      child: Text('Program Studi'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListPendidikanFormal[index]['Strata']}'),
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
                                      child: Text('Tanggal Masuk'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListPendidikanFormal[index]['Tanggal Masuk']}'),
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
                                      child: Text('Tahun Lulus'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListPendidikanFormal[index]['Tahun Lulus']}'),
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
                                      child: Text('Nomor Induk'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListPendidikanFormal[index]['Nomor Induk']}'),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '${_ListPendidikanFormal[index]['Nama']}',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          '${_ListPendidikanFormal[index]['Strata']}',
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
                                '${_ListPendidikanFormal[index]['Tahun']}',
                                style: const TextStyle(
                                    fontSize: 12.0, color: Colors.white),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 7),
                                height: 25,
                                width: 70,
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
                                        '${_ListPendidikanFormal[index]['Gelar Akademik']}',
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
