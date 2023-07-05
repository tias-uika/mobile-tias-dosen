import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CardPenelitian extends StatefulWidget {
  const CardPenelitian({super.key});

  @override
  State<CardPenelitian> createState() => _CardPenelitianState();
}

class _CardPenelitianState extends State<CardPenelitian> {
  final List<Map<String, dynamic>> _ListPenelitian = [
    {
      'Judul Kegiatan': 'Sistem Management E-voting untuk Pemilih Pemula',
      'Afiliasi': 'Universitas Ibn Khaldun Bogor',
      'Lama Kegiatan': '1 Tahun',
      'Periode': '2022/2023',
      'Tahun Pelaksanaan Ke': '1'
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
            itemCount: _ListPenelitian.length,
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
                                      child: Text('Judul Kegiatan'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListPenelitian[index]['Judul Kegiatan']}'),
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
                                      child: Text('Judul Kegiatan'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListPenelitian[index]['Afiliasi']}'),
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
                                      child: Text('Lama Kegiatan'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListPenelitian[index]['Lama Kegiatan']}'),
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
                                      child: Text('Tahun Pelaksanaan ke'),
                                    ),
                                    Expanded(
                                      child: Text(':'),
                                    ),
                                    Expanded(
                                      child: Text(
                                          '${_ListPenelitian[index]['Tahun Pelaksanaan Ke']}'),
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
                          '${_ListPenelitian[index]['Judul Kegiatan']}',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          '${_ListPenelitian[index]['Lama Kegiatan']}',
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
                                '${_ListPenelitian[index]['Periode']}',
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
