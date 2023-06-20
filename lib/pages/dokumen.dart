import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tias/models/DokumenModels.dart';

class Dokumen extends StatefulWidget {
  const Dokumen({super.key});

  @override
  State<Dokumen> createState() => _DokumenState();
}

class _DokumenState extends State<Dokumen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("Riwayat Dokumen Pribadi"),
        backgroundColor: HexColor("#FFFFFF"),
        titleTextStyle: TextStyle(
            fontFamily: "SF-Pro-Display-Bold",
            color: HexColor("#000000"),
            fontSize: 20,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
