import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ItemCard extends StatelessWidget {
  @override
  List imgList = ['assets/images/Update.png', 'assets/images/Update.png'];

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
              .map((item) => Container(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        child: Image.asset(
                          item,
                          height: 150,
                          width: 320,
                        ),
                      ),
                    ),
                  ))
              .toList()),
    );
  }
}
