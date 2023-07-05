import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

class Pengajaran extends StatefulWidget {
  const Pengajaran({super.key});

  @override
  State<Pengajaran> createState() => _PengajaranState();
}

class _PengajaranState extends State<Pengajaran> {
  bool _sortKelasAscending = true;
  bool _sortSKSAscending = true;
  bool _sortNamaAscending = true;

  final List<Map<String, dynamic>> _listPengajaran = [
    {
      'inisial': 'KI',
      'name': 'Kecakapan Intrapersonal',
      'kelas': 'Reguler B',
      'Jenis': 'WAJIB',
      'SKS': '2.00',
      'SKS Tatap Muka': '0.00',
      'SKS Praktek': '0.00',
      'SKS Praktek Lapangan': '0.00',
      'SKS Simulasi': '0.00',
      'Jumlah Tatap Muka Rencana': '16',
      'Jumlah Tatap Muka Realisasi': '16',
      'Jumlah Mahasiswa': '-',
      'Jenis Evaluasi': 'Evaluasi Akademik',
      'Nama Substansi': '-'
    },
    {
      'inisial': 'KI',
      'name': 'Kecakapan Intrapersonal',
      'kelas': 'Reguler D',
      'Jenis': 'WAJIB',
      'SKS': '2.00',
      'SKS Tatap Muka': '0.00',
      'SKS Praktek': '0.00',
      'SKS Praktek Lapangan': '0.00',
      'SKS Simulasi': '0.00',
      'Jumlah Tatap Muka Rencana': '16',
      'Jumlah Tatap Muka Realisasi': '16',
      'Jumlah Mahasiswa': '-',
      'Jenis Evaluasi': 'Evaluasi Akademik',
      'Nama Substansi': '-'
    },
    {
      'inisial': 'VVP',
      'name': 'Verifikasi Validasi Perangkat Lunak ',
      'kelas': 'Reguler B',
      'Jenis': 'WAJIB',
      'SKS': '3.00',
      'SKS Tatap Muka': '0.00',
      'SKS Praktek': '0.00',
      'SKS Praktek Lapangan': '0.00',
      'SKS Simulasi': '0.00',
      'Jumlah Tatap Muka Rencana': '16',
      'Jumlah Tatap Muka Realisasi': '16',
      'Jumlah Mahasiswa': '-',
      'Jenis Evaluasi': 'Evaluasi Akademik',
      'Nama Substansi': '-'
    },
    {
      'inisial': 'RPL',
      'name': 'Rekayasa Perangkat Lunak',
      'kelas': 'Reguler B',
      'Jenis': 'WAJIB',
      'SKS': '3.00',
      'SKS Tatap Muka': '0.00',
      'SKS Praktek': '0.00',
      'SKS Praktek Lapangan': '0.00',
      'SKS Simulasi': '0.00',
      'Jumlah Tatap Muka Rencana': '16',
      'Jumlah Tatap Muka Realisasi': '16',
      'Jumlah Mahasiswa': '-',
      'Jenis Evaluasi': 'Evaluasi Akademik',
      'Nama Substansi': '-'
    },
    {
      'inisial': 'KI',
      'name': 'Kecakapan Intrapersonal',
      'kelas': 'Karyawan A',
      'Jenis': 'WAJIB',
      'SKS': '2.00',
      'SKS Tatap Muka': '0.00',
      'SKS Praktek': '0.00',
      'SKS Praktek Lapangan': '0.00',
      'SKS Simulasi': '0.00',
      'Jumlah Tatap Muka Rencana': '16',
      'Jumlah Tatap Muka Realisasi': '16',
      'Jumlah Mahasiswa': '-',
      'Jenis Evaluasi': 'Evaluasi Akademik',
      'Nama Substansi': '-'
    },
    {
      'inisial': 'MP',
      'name': 'Manajemen Proyek',
      'kelas': 'Reguler A',
      'Jenis': 'WAJIB',
      'SKS': '3.00',
      'SKS Tatap Muka': '0.00',
      'SKS Praktek': '0.00',
      'SKS Praktek Lapangan': '0.00',
      'SKS Simulasi': '0.00',
      'Jumlah Tatap Muka Rencana': '16',
      'Jumlah Tatap Muka Realisasi': '16',
      'Jumlah Mahasiswa': '-',
      'Jenis Evaluasi': 'Evaluasi Akademik',
      'Nama Substansi': '-'
    },
  ];

  void _sortNama(bool ascending) {
    setState(() {
      _sortNamaAscending = ascending;
      _foundName.sort((a, b) => ascending
          ? a['name'].compareTo(b['name'])
          : b['name'].compareTo(a['name']));
    });
  }

  void _sortKelas(bool ascending) {
    setState(() {
      _sortKelasAscending = ascending;
      _foundName.sort((a, b) => ascending
          ? a['kelas'].compareTo(b['kelas'])
          : b['kelas'].compareTo(a['kelas']));
    });
  }

  void _sortSKS(bool ascending) {
    setState(() {
      _sortSKSAscending = ascending;
      _foundName.sort((a, b) => ascending
          ? a['SKS'].compareTo(b['SKS'])
          : b['SKS'].compareTo(a['SKS']));
    });
  }

  List<Map<String, dynamic>> _foundName = [];
  @override
  initState() {
    _foundName = _listPengajaran;
    super.initState();
  }

  // void _runFilter(String enteredKeyword) {
  //   List<Map<String, dynamic>> results = [];
  //   if (enteredKeyword.isEmpty) {
  //     // if the search field is empty or only contains white-space, we'll display all users
  //     results = _listPengajaran;
  //   } else {
  //     results = _listPengajaran
  //         .where((user) =>
  //             user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
  //         .toList();
  //     // we use the toLowerCase() method to make it case-insensitive
  //   }

  //   // Refresh the UI
  //   setState(() {
  //     _foundName = results;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            // TextField(
            //   onChanged: (value) => _runFilter(value),
            //   decoration: const InputDecoration(
            //       labelText: 'Search', suffixIcon: Icon(Icons.search)),
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => _sortKelas(!_sortKelasAscending),
                  child: Row(
                    children: [
                      const Text(
                        'Kelas',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      // the up/down arrow that indicates the sort order
                      Icon(
                        _sortKelasAscending
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => _sortSKS(!_sortSKSAscending),
                  child: Row(
                    children: [
                      const Text(
                        'SKS',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      // the up/down arrow that indicates the sort order
                      Icon(
                        _sortSKSAscending
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
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
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundName.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundName.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 24),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                builder: (context) => Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.85,
                                    decoration: new BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(25.0),
                                        topRight: const Radius.circular(25.0),
                                      ),
                                    ),
                                    child: SingleChildScrollView(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            top: 30,
                                            left: 30,
                                            right: 18,
                                            bottom: 20),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                      'SKS Total Persubstansi'),
                                                ),
                                                Expanded(
                                                  child: Text(':'),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                      _foundName[index]['SKS']),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                      'SKS Tatap Muka Persubstansi'),
                                                ),
                                                Expanded(
                                                  child: Text(':'),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                      '${_foundName[index]['SKS Tatap Muka']}'),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                      'SKS Praktek Persubstansi'),
                                                ),
                                                Expanded(
                                                  child: Text(':'),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                      '${_foundName[index]['SKS Praktek']}'),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                      'SKS Praktek Lapangan Persubstansi'),
                                                ),
                                                Expanded(
                                                  child: Text(':'),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                      '${_foundName[index]['SKS Praktek Lapangan']}'),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                      'SKS Simulasi Persubstansi'),
                                                ),
                                                Expanded(
                                                  child: Text(':'),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                      '${_foundName[index]['SKS Simulasi']}'),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                      'Jumlah Tatap Muka Rencana'),
                                                ),
                                                Expanded(
                                                  child: Text(':'),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                      '${_foundName[index]['Jumlah Tatap Muka Rencana']}'),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                      'Jumlah Tatap Muka Realisasi'),
                                                ),
                                                Expanded(
                                                  child: Text(':'),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                      '${_foundName[index]['Jumlah Tatap Muka Realisasi']}'),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child:
                                                      Text('Jumlah Mahasiswa'),
                                                ),
                                                Expanded(
                                                  child: Text(':'),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                      '${_foundName[index]['Jumlah Mahasiswa']}'),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child:
                                                      Text('Nama Mata Kuliah'),
                                                ),
                                                Expanded(
                                                  child: Text(':'),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                      '${_foundName[index]['name']}'),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text('Nama Kelas'),
                                                ),
                                                Expanded(
                                                  child: Text(':'),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                      '${_foundName[index]['kelas']}'),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child:
                                                      Text('Jenis Mata Kuliah'),
                                                ),
                                                Expanded(
                                                  child: Text(':'),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                      '${_foundName[index]['Jenis']}'),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text('Jenis Evaluasi'),
                                                ),
                                                Expanded(
                                                  child: Text(':'),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                      '${_foundName[index]['Jenis Evaluasi']}'),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text('Nama Substansi'),
                                                ),
                                                Expanded(
                                                  child: Text(':'),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                      '${_foundName[index]['Nama Substansi']}'),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )),
                              );
                            },
                            key: ValueKey(_foundName[index]["kelas"]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                          backgroundColor: HexColor("6A5BE2"),
                                          child: Text(
                                            '${_listPengajaran[index]['inisial']}',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold,
                                                color: HexColor("FFFFFF")),
                                          )),
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        margin: EdgeInsets.only(left: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              _foundName[index]['name'],
                                              style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '${_listPengajaran[index]['kelas']}',
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
                                Container(
                                  padding: EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Mata Kuliah'),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        _foundName[index]['Jenis'],
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                              '${_listPengajaran[index]['SKS']}',
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
                          ),
                        );
                      })
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
