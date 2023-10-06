import 'package:cosmic_trip/pages/details_page/jupiter_details.dart';
import 'package:cosmic_trip/pages/details_page/mars_details.dart';
import 'package:cosmic_trip/pages/details_page/mercury_details.dart';
import 'package:cosmic_trip/pages/details_page/saturn_details.dart';
import 'package:cosmic_trip/pages/details_page/uranus_details.dart';
import 'package:cosmic_trip/pages/details_page/venus_details.dart';
import 'package:cosmic_trip/pages/slider_page/slider_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

/// This is the main class for the home page of the Cosmic Trip app.
/// It displays a slider with information about different planets in our solar system.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final DemoData = [
      PlanetDetails(
        details:
            "Mercury: The Sun-Kissed World of Mysteries and Scientific Marvels ",
        image: "assets/mercury.png",
        title: "Mercury",
        nav: MercuryDetails(),
      ),
      PlanetDetails(
        details: "Venus: The Mysterious Morning Star and Scientific Enigma ",
        image: "assets/venus.png",
        title: "Venus",
        nav: VenusDetails(),
      ),
      PlanetDetails(
        details: "Exploring Mars: The Red Planet's Mysteries",
        image: "assets/mars.png",
        title: "Mars",
        nav: MarsDetails(),
      ),
      PlanetDetails(
          details:
              "Jupiter: The Giant of the Solar System, a Cosmic Marvel, and a Realm of Endless Fascination",
          image: "assets/jupiter.png",
          title: "Jupiter",
          nav: JupiterDetails()),
      PlanetDetails(
        details:
            "Saturn: The Ringed Wonder, Scientific Treasure, and Celestial Marvel of Our Solar System",
        image: "assets/saturn.png",
        title: "Saturn",
        nav: SaturnDetails(),
      ),
      PlanetDetails(
        details:
            "Uranus: The Enigmatic Ice Giant, Astronomical Puzzle, and Cosmic Mystery",
        image: "assets/uranus.png",
        title: "Uranus",
        nav: UranusDetails(),
      ),
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
              fit: BoxFit.cover,
            ),
          ),
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
                link: DemoData[index].nav,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// This class represents the details of a planet.
class PlanetDetails {
  final title, details, image, nav;
  PlanetDetails({
    required this.details,
    required this.image,
    required this.title,
    required this.nav,
  });
}
