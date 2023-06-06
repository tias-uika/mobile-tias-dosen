import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ItemLeaderboard extends StatelessWidget {
  @override
  List imgList = [
    'assets/images/leaderboard.png',
    'assets/images/leaderboard.png'
  ];

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 6),
      child: CarouselSlider(
          options: CarouselOptions(
            height: 150,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
          ),
          items: imgList
              .map((item) => Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Container(
                      height: 150,
                      width: 320,
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          child: Stack(
                            children: <Widget>[
                              Image.asset(
                                item,
                                height: 150,
                                width: 320,
                              ),
                            ],
                          )),
                    ),
                  ))
              .toList()),
    );
  }
}
