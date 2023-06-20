import 'package:flutter/material.dart';
import 'package:tias/Pages/Perkembangan.dart';

class Statistik extends StatefulWidget {
  const Statistik({super.key});

  @override
  State<Statistik> createState() => _StatistikState();
}

class _StatistikState extends State<Statistik> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(18, 10, 18, 0),
      width: double.infinity,
      height: 153,
      child: GestureDetector(
        child: Image.asset("assets/images/statistik.png"),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => Perkembangan()));
        },
      ),
    );
  }
}
