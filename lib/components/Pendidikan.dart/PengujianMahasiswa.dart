import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PengujianMahasiswa extends StatefulWidget {
  const PengujianMahasiswa({super.key});

  @override
  State<PengujianMahasiswa> createState() => _PengujianMahasiswaState();
}

class _PengujianMahasiswaState extends State<PengujianMahasiswa> {
  bool _sortNamaAscending = true;
  bool _sortSemesterAscending = true;
  @override
  final List<Map<String, dynamic>> _listPengujianMahasiswa = [
    {
      'Nama':
          'Pengembangan Aplikasi Profil Prodi Teknik Informatika (PROTIKA) Berbasis Android',
      'Jenis': 'Tugas Akhir',
      'Keterangan': 'Kolokium',
      'Nomor SK Penugasan': '291/K.1/TI-FT/IX/2019',
      'Tanggal SK Penugasan': '2019-09-10',
      'Program Studi': 'Teknik Informatika',
      'Semester': '2019/2020 Ganjil',
      'Lokasi Kegiatan': 'Bogor'
    },
  ];
  void _sortNama(bool ascending) {
    setState(() {
      _sortNamaAscending = ascending;
      _listPengujianMahasiswa.sort((a, b) => ascending
          ? a['nama'].compareTo(b['nama'])
          : b['nama'].compareTo(a['nama']));
    });
  }

  void _sortSemester(bool ascending) {
    setState(() {
      _sortSemesterAscending = ascending;
      _listPengujianMahasiswa.sort((a, b) => ascending
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
              itemCount: _listPengujianMahasiswa.length,
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
                                        child: Text(
                                            'Judul Aktivitas Pembimbingan'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listPengujianMahasiswa[index]['Nama']}'),
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
                                            '${_listPengujianMahasiswa[index]['Lokasi Kegiatan']}'),
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
                                            '${_listPengujianMahasiswa[index]['Nomor SK Penugasan']}'),
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
                                            '${_listPengujianMahasiswa[index]['Tanggal SK Penugasan']}'),
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
                                            '${_listPengujianMahasiswa[index]['Keterangan']}'),
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
                                            '${_listPengujianMahasiswa[index]['Jenis']}'),
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
                                            '${_listPengujianMahasiswa[index]['Program Studi']}'),
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
                                            '${_listPengujianMahasiswa[index]['Semester']}'),
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
                            '${_listPengujianMahasiswa[index]['Nama']}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${_listPengujianMahasiswa[index]['Jenis']}',
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Keterangan Aktivitas :"),
                          Text(
                            '${_listPengujianMahasiswa[index]['Keterangan']}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 14.0,
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
