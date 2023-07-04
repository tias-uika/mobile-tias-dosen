import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tias/pages/ProfilDosen.dart';

class EditProfil extends StatefulWidget {
  const EditProfil({super.key});

  @override
  State<EditProfil> createState() => _EditProfilState();
}

class _EditProfilState extends State<EditProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: HexColor("#6A5BE2"),
                height: 300,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 50),
                child: Text('Profil',
                    style: TextStyle(
                        fontFamily: 'SF-Pro-Display',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 200, 15, 0),
                child: Container(
                  width: double.infinity,
                  height: 280,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 13,
                          left: 275,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfilDosen(),
                              ),
                            );
                          },
                          child: Image.asset('assets/images/saveeditmhs.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 180, top: 60),
                        child: Text(
                          'Nama Lengkap',
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
                              padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
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
                              padding:
                                  const EdgeInsets.only(left: 285, top: 15),
                              child: Image.asset(
                                  'assets/images/editprofilmhs.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                              child: TextField(
                                onChanged: (value) {
                                  // Logika yang dijalankan saat teks diubah
                                  print('Teks berubah: $value');
                                },
                                decoration: InputDecoration(
                                  hintText: 'Fitrah Satrya Fajar Kusumah',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 245, top: 20),
                        child: Text(
                          'NIDN',
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
                              padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
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
                              padding:
                                  const EdgeInsets.only(left: 285, top: 15),
                              child: Image.asset(
                                  'assets/images/editprofilmhs.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                              child: TextField(
                                onChanged: (value) {
                                  // Logika yang dijalankan saat teks diubah
                                  print('Teks berubah: $value');
                                },
                                decoration: InputDecoration(
                                  hintText: '0411058902',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 128,
                  left: 123,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/citations-1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
