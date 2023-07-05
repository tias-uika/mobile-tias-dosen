import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AnggotaProfesi extends StatefulWidget {
  const AnggotaProfesi({super.key});

  @override
  State<AnggotaProfesi> createState() => _AnggotaProfesiState();
}

class _AnggotaProfesiState extends State<AnggotaProfesi> {
  final List<Map<String, dynamic>> _ListAnggotaProfesi = [
    {
      'Kategori Kegiatan': 'Tingkat nasional sebagai anggota aktif',
      'Nama Kegiatan': 'APTIKOM',
      'Peran': 'Anggota',
      'Mulai Keanggotaan': '30 Oktober 2022',
      'Selesai Keanggotaan': '30 Oktober 2023',
      'Jenis': 'Sebagai Anggota',
      'Tanggal': '30 Oktober 2022 - 30 Oktober 2023'
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
            itemCount: _ListAnggotaProfesi.length,
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
                          height: MediaQuery.of(context).size.height * 0.50,
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
                                      child: Text('Kategori Kegiatan'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListAnggotaProfesi[index]['Kategori Kegiatan']}'),
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
                                      child: Text('Nama Kegiatan'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListAnggotaProfesi[index]['Nama Kegiatan']}'),
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
                                      child: Text('Peran'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListAnggotaProfesi[index]['Peran']}'),
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
                                      child: Text('Mulai Keanggotaan'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListAnggotaProfesi[index]['Mulai Keanggotaan']}'),
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
                                      child: Text('Selesai Keanggotaan'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListAnggotaProfesi[index]['Selesai Keanggotaan']}'),
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
                                      child: Text('Instansi Profesi'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListAnggotaProfesi[index]['Nama Kegiatan']}'),
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
                          '${_ListAnggotaProfesi[index]['Nama Kegiatan']}',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          '${_ListAnggotaProfesi[index]['Jenis']}',
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
                                '${_ListAnggotaProfesi[index]['Tanggal']}',
                                style: const TextStyle(
                                    fontSize: 12.0, color: Colors.white),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 7),
                                height: 25,
                                width: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Center(
                                    child: Row(
                                  children: <Widget>[
                                    Center(
                                      child: Text(
                                        "Tidak Sesuai PO BKD 2021",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                            color: Colors.red),
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
