import 'package:cosmic_trip/pages/common_elements/planet_images.dart';
import 'package:cosmic_trip/pages/common_elements/planetary_texts.dart';
import 'package:cosmic_trip/pages/common_elements/search_here.dart';
import 'package:flutter/material.dart';

class SliderPages extends StatelessWidget {
  const SliderPages({
    super.key,
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
            planet: "assets/mercury.png",
          ),
          PlanetaryTexts(
            name: "Mercury",
            details:
                "Mercury: The Sun-Kissed World of Mysteries and Scientific Marvels ",
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
