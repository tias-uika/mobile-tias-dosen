import 'package:flutter/material.dart';
import 'package:tias/pages/perkembangan.dart';
import 'package:tias/theme.dart';

class Statistik extends StatelessWidget {
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
