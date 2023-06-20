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
  SolidController _controller = SolidController();

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
      'name': 'Verifikasi dan Validasi Perangkat Lunak ',
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

  void _sortKelas(bool ascending) {
    setState(() {
      _sortKelasAscending = ascending;
      _listPengajaran.sort((a, b) => ascending
          ? a['kelas'].compareTo(b['kelas'])
          : b['kelas'].compareTo(a['kelas']));
    });
  }

  void _sortSKS(bool ascending) {
    setState(() {
      _sortSKSAscending = ascending;
      _listPengajaran.sort((a, b) => ascending
          ? a['SKS'].compareTo(b['SKS'])
          : b['SKS'].compareTo(a['SKS']));
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
              ],
            ),
          ),
          // The list of products
          Expanded(
            child: ListView.builder(
              itemCount: _listPengajaran.length,
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
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          )),
                          builder: (context) => Padding(
                            padding: EdgeInsets.all(50),
                            child: Column(
                              children: <Widget>[],
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
                                      '${_listPengajaran[index]['inisial']}',
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
                                        '${_listPengajaran[index]['name']}',
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
                          Text("Mata Kuliah :"),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '${_listPengajaran[index]['Jenis']}',
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
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
