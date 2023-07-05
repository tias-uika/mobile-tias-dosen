import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Alamat extends StatefulWidget {
  const Alamat({super.key});

  @override
  State<Alamat> createState() => _AlamatState();
}

class _AlamatState extends State<Alamat> {
  @override
  List<String> listProvinsi = [
    "Jawa Barat",
    "Jawa Tengah",
    "Jawa Timur",
  ];
  List<String> listKota = ["Bogor", "Bandung", "Bekasi", "Tangerang"];
  List<String> listKecamatan = [
    "Bogor Utara",
    "Bogor Barat",
    "Bogor Tengah",
    "Bogor Selatan",
    "Bogor Timur",
    "Tanah Sareal",
  ];
  List<String> listDesa = [
    "Cimanggu",
    "Ciomas",
    "Cibinong",
    "Dramaga",
    "Citeureup",
    "Ciluar",
  ];

  String nProvinsi = "Jawa Barat";
  int? nilaiProvinsi;

  void pilihProvinsi(String value) {
    //menampilkan kota yang dipilih
    setState(() {
      nProvinsi = value;
    });
  }

  String nKota = "Bogor";
  int? nilaiKota;

  void pilihKota(String value) {
    //menampilkan kota yang dipilih
    setState(() {
      nKota = value;
    });
  }

  String nKecamatan = "Tanah Sareal";
  int? nilaiKecamatan;

  void pilihKecamatan(String value) {
    //menampilkan kota yang dipilih
    setState(() {
      nKecamatan = value;
    });
  }

  String nDesa = "Cimanggu";
  int? nilaiDesa;

  void pilihDesa(String value) {
    //menampilkan kota yang dipilih
    setState(() {
      nDesa = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25),
            child: Text(
              'Email',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Container(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 25, 0),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 290, top: 15),
                  child: Image.asset('assets/images/editprofilmhs.png'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 35, 0),
                  child: TextField(
                    onChanged: (value) {
                      // Logika yang dijalankan saat teks diubah
                      print('Teks berubah: $value');
                    },
                    decoration: InputDecoration(
                      hintText: 'fitrah.satv@gmail.com',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25),
            child: Text(
              'Alamat',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Container(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 25, 0),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 290, top: 15),
                  child: Image.asset('assets/images/editprofilmhs.png'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 35, 0),
                  child: TextField(
                    onChanged: (value) {
                      // Logika yang dijalankan saat teks diubah
                      print('Teks berubah: $value');
                    },
                    decoration: InputDecoration(
                      hintText: 'Cimanggu permai 1, Jl Borobudur...',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25),
            child: Text(
              'Provinsi',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 25, 0),
            child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                  child: DropdownButton(
                    value: nProvinsi,
                    onChanged: (String? value) {
                      pilihProvinsi(
                          value ?? ""); //perubahaan saat kota di pilih
                      nilaiProvinsi = listProvinsi.indexOf(value ??
                          ""); //mengambil nilai index berdasarkan urutan list
                    },
                    items: listProvinsi.map((String value) {
                      return DropdownMenuItem(
                        //tampilan isi data dropdown
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25),
            child: Text(
              'Kota / Kabupaten',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 25, 0),
            child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                  child: DropdownButton(
                    value: nKota,
                    onChanged: (String? value) {
                      pilihKota(value ?? ""); //perubahaan saat kota di pilih
                      nilaiKota = listKota.indexOf(value ??
                          ""); //mengambil nilai index berdasarkan urutan list
                    },
                    items: listKota.map((String value) {
                      return DropdownMenuItem(
                        //tampilan isi data dropdown
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25),
            child: Text(
              'Kecamatan',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 25, 0),
            child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                  child: DropdownButton(
                    value: nKecamatan,
                    onChanged: (String? value) {
                      pilihKecamatan(
                          value ?? ""); //perubahaan saat kota di pilih
                      nilaiKecamatan = listKecamatan.indexOf(value ??
                          ""); //mengambil nilai index berdasarkan urutan list
                    },
                    items: listKecamatan.map((String value) {
                      return DropdownMenuItem(
                        //tampilan isi data dropdown
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25),
            child: Text(
              'Desa',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 25, 0),
            child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                  child: DropdownButton(
                    value: nDesa,
                    onChanged: (String? value) {
                      pilihDesa(value ?? ""); //perubahaan saat kota di pilih
                      nilaiDesa = listDesa.indexOf(value ??
                          ""); //mengambil nilai index berdasarkan urutan list
                    },
                    items: listDesa.map((String value) {
                      return DropdownMenuItem(
                        //tampilan isi data dropdown
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25),
            child: Text(
              'Kode Pos',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 25, 0),
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0, 4),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  '16164',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25),
            child: Text(
              'Nomor Telepon Rumah',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Container(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 25, 0),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 290, top: 15),
                  child: Image.asset('assets/images/editprofilmhs.png'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 35, 0),
                  child: TextField(
                    onChanged: (value) {
                      // Logika yang dijalankan saat teks diubah
                      print('Teks berubah: $value');
                    },
                    decoration: InputDecoration(
                      hintText: '02512377217377',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25),
            child: Text(
              'Nomor Telepon',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Container(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 25, 20),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 290, top: 15),
                  child: Image.asset('assets/images/editprofilmhs.png'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 35, 0),
                  child: TextField(
                    onChanged: (value) {
                      // Logika yang dijalankan saat teks diubah
                      print('Teks berubah: $value');
                    },
                    decoration: InputDecoration(
                      hintText: '02512377217377',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
