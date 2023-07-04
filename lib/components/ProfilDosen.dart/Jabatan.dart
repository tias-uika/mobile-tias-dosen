import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

class Jabatan extends StatefulWidget {
  const Jabatan({super.key});

  @override
  State<Jabatan> createState() => _JabatanState();
}

class _JabatanState extends State<Jabatan> {
  @override
  bool _sortKelasAscending = true;
  bool _sortSKSAscending = true;
  bool _sortNamaAscending = true;
  SolidController _controller = SolidController();

  final List<Map<String, dynamic>> _listPengajaran = [
    {
      'Jabatan Fungsional': 'Lektor (300.00)',
      'No SK': '3315/L4/2020',
      'Tanggal SK': 'Terhitung Mulai Tanggal 01 Juni 2020',
      'Angka Kredit': '300.00',
      'Kelebihan Pengajaran': '0.00',
      'Kelebihan Penelitian': '2.05',
      'Kelebihan Pengabdian Masyarakat': '0.00',
      'Kelebihan Kegiatan Penunjang': '0.00',
    },
    {
      'Jabatan Fungsional': 'III/b - Penata Muda Tk.I',
      'No SK': '2755/L4/KP/2018',
      'Tanggal SK': 'Terhitung Mulai Tanggal 01 Juni 2018',
      'Angka Kredit': '300.00',
      'Kelebihan Pengajaran': '0.00',
      'Kelebihan Penelitian': '2.05',
      'Kelebihan Pengabdian Masyarakat': '0.00',
      'Kelebihan Kegiatan Penunjang': '0.00',
    },
    {
      'Jabatan Fungsional': 'Asisten Ahli (150.00)',
      'No SK': '3887/K4/2018',
      'Tanggal SK': 'Terhitung Mulai Tanggal 01 Juni 2018',
      'Angka Kredit': '150.00',
      'Kelebihan Pengajaran': '0.00',
      'Kelebihan Penelitian': '2.05',
      'Kelebihan Pengabdian Masyarakat': '0.00',
      'Kelebihan Kegiatan Penunjang': '0.00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // The list of products
          Expanded(
            child: ListView.builder(
              itemCount: _listPengajaran.length,
              itemBuilder: (context, index) {
                // the list item - product
                return Container(
                    padding: const EdgeInsets.all(20),
                    margin:
                        const EdgeInsets.only(bottom: 10, right: 15, left: 7),
                    decoration: BoxDecoration(
                      color: HexColor("#6A5BE2"),
                      borderRadius: BorderRadius.circular(10),
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
                                        child: Text('Jabatan Fungsional'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listPengajaran[index]['Jabatan Fungsional']}'),
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
                                        child: Text('No SK'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listPengajaran[index]['No SK']}'),
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
                                        child: Text('Terhitung Mulai Tanggal'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listPengajaran[index]['Tanggal SK']}'),
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
                                        child: Text('Angka Kredit'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listPengajaran[index]['Angka Kredit']}'),
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
                                        child: Text('Kelebihan Pengajaran'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listPengajaran[index]['Kelebihan Pengajaran']}'),
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
                                        child: Text('Kelebihan Penelitian'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listPengajaran[index]['Kelebihan Penelitian']}'),
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
                                        child: Text(
                                            'Kelebihan Pengabdian Masyarakat'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listPengajaran[index]['Kelebihan Pengabdian Masyarakat']}'),
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
                                        child: Text(
                                            'Kelebihan Kegiatan Penunjang'),
                                      ),
                                      Expanded(
                                        child: Text(':'),
                                      ),
                                      Expanded(
                                        child: Text(
                                            '${_listPengajaran[index]['Kelebihan Kegiatan Penunjang']}'),
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
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '${_listPengajaran[index]['Jabatan Fungsional']}',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
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
                          Text(
                            '${_listPengajaran[index]['No SK']}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '${_listPengajaran[index]['Tanggal SK']}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 45),
                                  height: 25,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: HexColor("6A5BE2"),
                                  ),
                                  child: Center(
                                      child: Row(
                                    children: <Widget>[
                                      Image.asset(
                                          'assets/images/detailjabatan.png'),
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
