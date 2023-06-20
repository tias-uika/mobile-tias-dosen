import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Penelitian extends StatefulWidget {
  const Penelitian({super.key});

  @override
  State<Penelitian> createState() => _PenelitianState();
}

class _PenelitianState extends State<Penelitian> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: HexColor("#FFFFFF"),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: HexColor("#FFFFFF"),
          title: Text(
            "Penelitian",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "SF-Pro-Display",
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 30),
          child: TabBar(
              isScrollable: true,
              indicatorColor: HexColor("#6A5BE2"),
              labelColor: HexColor("#6A5BE2"),
              labelStyle: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700),
              unselectedLabelColor: Colors.grey, //For Selected tab
              //For Un-selected Tabs
              tabs: [
                Tab(
                  text: ('Penelitian'),
                ),
                Tab(
                  text: ('Publikasi Karya'),
                ),
                Tab(
                  text: ('HKI'),
                ),
              ]),
        ),
      ),
    );
  }
}
