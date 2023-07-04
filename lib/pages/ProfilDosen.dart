import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tias/components/ProfilDosen.dart/EditProfil.dart';
import 'package:tias/components/ProfilDosen.dart/Kependudukan.dart';
import 'package:tias/components/ProfilDosen.dart/Alamat.dart';
import 'package:tias/components/ProfilDosen.dart/Jabatan.dart';

class ProfilDosen extends StatefulWidget {
  const ProfilDosen({super.key});

  @override
  State<ProfilDosen> createState() => _ProfilDosenState();
}

class _ProfilDosenState extends State<ProfilDosen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(children: [
            Stack(children: [
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
                  height: 200,
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
                                builder: (context) => EditProfil(),
                              ),
                            );
                          },
                          child: Image.asset('assets/images/editprofilmhs.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: Text('Fitrah Satrya Fajar Kusumah',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('0411058902',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
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
              Padding(
                padding: const EdgeInsets.only(top: 335, left: 21.5),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.purple,
                  labelColor: Colors.purple,
                  labelStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700),
                  unselectedLabelColor: Colors.grey, //For Selected tab
                  //For Un-selected Tabs
                  tabs: [
                    Tab(
                      text: ('Kependudukan'),
                    ),
                    Tab(
                      text: ('Alamat'),
                    ),
                    Tab(
                      text: ('Jabatan'),
                    ),
                  ],
                ),
              ),
            ]),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: TabBarView(children: [
                Kependudukan(),
                Alamat(),
                Jabatan(),
              ]),
            ))
          ]),
        ));
  }
}
