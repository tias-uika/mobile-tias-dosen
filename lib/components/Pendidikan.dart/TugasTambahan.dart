import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TugasTambahan extends StatefulWidget {
  const TugasTambahan({super.key});

  @override
  State<TugasTambahan> createState() => _TugasTambahanState();
}

class _TugasTambahanState extends State<TugasTambahan> {
  bool _sortNamaAscending = true;
  bool _sortSemesterAscending = true;
  @override
  final List<Map<String, dynamic>> _listBimbinganMahasiswa = [
    {
      'inisial': 'KP',
      'nama': 'Membimbing Kerja Praktik',
      'semester': '2021 - 2022 Genap',
      'judul':
          'Pengembangan Sistem Pelayanan Medika Varteriner Bagian Front End'
    },
  ];
  void _sortNama(bool ascending) {
    setState(() {
      _sortNamaAscending = ascending;
      _listBimbinganMahasiswa.sort((a, b) => ascending
          ? a['nama'].compareTo(b['nama'])
          : b['nama'].compareTo(a['nama']));
    });
  }

  void _sortSemester(bool ascending) {
    setState(() {
      _sortSemesterAscending = ascending;
      _listBimbinganMahasiswa.sort((a, b) => ascending
          ? a['semester'].compareTo(b['semester'])
          : b['semester'].compareTo(a['semester']));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => _sortNama(!_sortNamaAscending),
                  child: Row(
                    children: [
                      const Text(
                        'Nama',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      // the up/down arrow that indicates the sort order
                      Icon(
                        _sortNamaAscending
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => _sortSemester(!_sortSemesterAscending),
                  child: Row(
                    children: [
                      const Text(
                        'Semester',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      // the up/down arrow that indicates the sort order
                      Icon(
                        _sortSemesterAscending
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // The list of products
          Expanded(
            child: ListView.builder(
              itemCount: _listBimbinganMahasiswa.length,
              itemBuilder: (context, index) {
                // the list item - product
                return Container(
                    padding: const EdgeInsets.all(20),
                    margin:
                        const EdgeInsets.only(bottom: 10, right: 15, left: 15),
                    decoration: BoxDecoration(
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
                                        child: Text('SKS Total Persubstansi'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listBimbinganMahasiswa[index]['SKS']}'),
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
                          Container(
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                    backgroundColor: HexColor("6A5BE2"),
                                    child: Text(
                                      '${_listBimbinganMahasiswa[index]['inisial']}',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor("FFFFFF")),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '${_listBimbinganMahasiswa[index]['name']}',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '${_listBimbinganMahasiswa[index]['kelas']}',
                                        style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Mata Kuliah :"),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '${_listBimbinganMahasiswa[index]['Jenis']}',
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 7),
                                  height: 25,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: HexColor("6A5BE2"),
                                  ),
                                  child: Center(
                                      child: Row(
                                    children: <Widget>[
                                      Text(
                                        "SKS ",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '${_listBimbinganMahasiswa[index]['SKS']}',
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
