import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BimbinganMahasiswa extends StatefulWidget {
  const BimbinganMahasiswa({super.key});

  @override
  State<BimbinganMahasiswa> createState() => _BimbinganMahasiswaState();
}

class _BimbinganMahasiswaState extends State<BimbinganMahasiswa> {
  bool _sortNamaAscending = true;
  bool _sortSemesterAscending = true;

  final List<Map<String, dynamic>> _listBimbinganMahasiswa = [
    {
      'inisial': 'KP',
      'Nama': 'Membimbing Kerja Praktik',
      'Semester': '2021 - 2022 Genap',
      'Judul':
          'Pengembangan Sistem Pelayanan Medika Varteriner Bagian Front End',
      'Lokasi': 'CV.MUGHNI SOLUSI UTAMA',
      'Nomor SK Penugasan': '109/K.1.1/TU-FTS/IV/2022',
      'Tanggal SK Penugasan': '2022-04-16',
      'Keterangan Aktivitas': '-',
      'Komunal': 'Tidak',
      'Jenis Bimbingan': 'Kerja Praktek/PKL',
      'Program Studi': 'Teknik Informatika',
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
                            height: MediaQuery.of(context).size.height * 0.55,
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
                                        child:
                                            Text('Judul Aktivitas Pembimbing'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listBimbinganMahasiswa[index]['Judul']}'),
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
                                        child: Text('Lokasi Kegiatan'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listBimbinganMahasiswa[index]['Lokasi']}'),
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
                                        child: Text('Nomor SK Penugasan'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listBimbinganMahasiswa[index]['Nomor SK Penugasan']}'),
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
                                        child: Text('Tanggal SK Penugasan'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listBimbinganMahasiswa[index]['Tanggal SK Penugasan']}'),
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
                                        child: Text('Keterangan Aktivitas'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listBimbinganMahasiswa[index]['Keterangan Aktivitas']}'),
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
                                        child: Text('Apakah Komunal ?'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listBimbinganMahasiswa[index]['Komunal']}'),
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
                                        child: Text('Jenis Bimbingan'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listBimbinganMahasiswa[index]['Jenis Bimbingan']}'),
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
                                            '${_listBimbinganMahasiswa[index]['Program Studi']}'),
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
                                        child: Text('Semester'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listBimbinganMahasiswa[index]['Semester']}'),
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
                                        '${_listBimbinganMahasiswa[index]['Nama']}',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '${_listBimbinganMahasiswa[index]['Semester']}',
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
                          Text("Judul Aktivitas Pembimbingan :"),
                          Text(
                            '${_listBimbinganMahasiswa[index]['Judul']}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
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
