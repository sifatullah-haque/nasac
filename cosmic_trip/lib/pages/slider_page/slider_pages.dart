// ignore_for_file: must_be_immutable

import 'package:cosmic_trip/pages/common_elements/planet_images.dart';
import 'package:cosmic_trip/pages/common_elements/planetary_texts.dart';
import 'package:cosmic_trip/pages/common_elements/search_bar.dart';

import 'package:flutter/material.dart';

/// A widget that displays a slider page for a planet.
class SliderPages extends StatelessWidget {
  final String planet, des, image;
  var link;

  /// Creates a slider page for a planet.
  ///
  /// The [planet], [des], and [image] arguments must not be null.
  SliderPages({
    super.key,
    required this.planet,
    required this.des,
    required this.image,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          SearchHere(),
          const Spacer(),
          PlanetImages(
            planet: image,
          ),
          PlanetaryTexts(
            name: planet,
            details: des,
            link: link,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
