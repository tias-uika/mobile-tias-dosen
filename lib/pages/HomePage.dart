import 'package:flutter/material.dart';
import 'package:tias/Components/Cv.dart';
import 'package:tias/Components/LeaderBoard.dart';
import 'package:tias/Components/Statistik.dart';
import 'package:tias/Components/Update.dart';
import 'package:tias/Components/User.dart';
import 'package:tias/Components/Menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 143,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Background.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    User(),
                    DataCv(),
                    Menu(),
                    Statistik(),
                    LeaderBoard(),
                    UpdateTerbaru()
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
