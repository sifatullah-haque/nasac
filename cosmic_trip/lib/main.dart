import 'package:cosmic_trip/pages/common_elements/search_bar.dart';
import 'package:cosmic_trip/pages/slider_page/slider_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final DemoData = [
      PlanetDetails(
          details:
              "Mercury: The Sun-Kissed World of Mysteries and Scientific Marvels ",
          image: "assets/mercury.png",
          title: "Mercury"),
      PlanetDetails(
          details: "Venus: The Mysterious Morning Star and Scientific Enigma ",
          image: "assets/venus.png",
          title: "Venus"),
      PlanetDetails(
          details: "Exploring Mars: The Red Planet's Mysteries",
          image: "assets/mars.png",
          title: "Mars"),
      PlanetDetails(
          details:
              "Jupiter: The Giant of the Solar System, a Cosmic Marvel, and a Realm of Endless Fascination",
          image: "assets/jupiter.png",
          title: "Jupiter"),
      PlanetDetails(
          details:
              "Saturn: The Ringed Wonder, Scientific Treasure, and Celestial Marvel of Our Solar System",
          image: "assets/saturn.png",
          title: "Saturn"),
      PlanetDetails(
          details:
              "Uranus: The Enigmatic Ice Giant, Astronomical Puzzle, and Cosmic Mystery",
          image: "assets/uranus.png",
          title: "Uranus"),
    ];

    return ScreenUtilInit(
      designSize: Size(414, 896),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.contain,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: const Icon(
                  Icons.menu_rounded,
                  color: Colors.white,
                  size: 40.0,
                ),
                centerTitle: true,
                title: Row(
                  children: [
                    Text(
                      "Cosmic",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      "Trip",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w200,
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
              body: PageView.builder(
                itemCount: DemoData.length,
                itemBuilder: (context, index) => SliderPages(
                  planet: DemoData[index].title,
                  des: DemoData[index].details,
                  image: DemoData[index].image,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PlanetDetails {
  final title, details, image;
  PlanetDetails({
    required this.details,
    required this.image,
    required this.title,
  });
}
