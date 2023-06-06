import 'package:flutter/material.dart';
import 'package:tias/models/itemcardleaderboard.dart';
import 'package:tias/pages/leaderboard_page.dart';
import 'package:tias/theme.dart';

class Leaderboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 31, right: 20, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: Row(
            children: [
              Flexible(
                child: Text(
                  "LeaderBoard",
                  style: TextStyle(
                      fontFamily: 'SF-Pro-Display',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 0.9285714286,
                      letterSpacing: 0.0659999996),
                ),
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 5),
                      child: Image.asset(
                        "assets/images/material-symbols-leaderboard-rounded.png",
                        width: 16.67,
                        height: 15,
                      )),
                ],
              )
            ],
          )),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500",
          ),
          const SizedBox(
            height: 8,
          ),
          GestureDetector(
            child: ItemLeaderboard(),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => LeaderBoardPage()));
            },
          ),
        ],
      ),
    );
  }
}
