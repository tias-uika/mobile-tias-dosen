import 'package:flutter/material.dart';
import 'package:tias/theme.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 61, 30, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              text: "Halo, ",
              style: SFregular,
              children: <TextSpan>[
                TextSpan(
                    text: "fitrah satrya fajar",
                    style: TextStyle(
                        fontFamily: 'SF-Pro-Display',
                        fontSize: 15,
                        fontWeight: FontWeight.w700))
              ],
            ),
          ),
          Text(
            "TIAS",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Heveltica-Bold-Font",
                fontSize: 15,
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
