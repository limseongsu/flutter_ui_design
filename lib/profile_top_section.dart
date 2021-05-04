import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_ui_design/models/profile.dart';

class ProfileTopSection extends StatelessWidget {
  final Profile profile;

  ProfileTopSection(this.profile);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: profile.profileImages
      .map((e) => Image.network(
          e,
          width: MediaQuery.of(context).size.width,
          height: 370.0,
        fit: BoxFit.cover,
        )).toList(),
      options: CarouselOptions(
        height: 370.0,
        //사진을 width 꽉 차게
        viewportFraction: 1,
        //인피니트스크롤을 막는것
        enableInfiniteScroll: false,
      ),
    );
  }
}
