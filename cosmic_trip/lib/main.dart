import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      minTextAdapt: true,
      child: MaterialApp(
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
                    Icons.menu_open_sharp,
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
                          fontSize: 35.sp,
                        ),
                      ),
                      Text(
                        "Trip",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w200,
                          fontSize: 35.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    children: [
                      SearchBar(),
                      const Spacer(),
                      PlanetImages(),
                      PlanetaryTexts(),
                      const Spacer(),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}

class PlanetaryTexts extends StatelessWidget {
  const PlanetaryTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Mercury",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 45.sp,
          ),
        ),
        Text(
          "Planet",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 45.sp,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "Mercury: The Sun-Kissed World of Mysteries and Scientific Marvels ",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 15.sp,
          ),
        ),
        Row(
          children: [
            TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "View More",
                      style: GoogleFonts.roboto(
                        fontSize: 18.sp,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                    ),
                  ],
                )),
          ],
        ),
      ],
    );
  }
}

class PlanetImages extends StatelessWidget {
  const PlanetImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/mercury.png",
        width: 338.w,
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350.w,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            prefixIconColor: Colors.white.withOpacity(0.8),
            hintText: "Search your favorite planet",
            hintStyle: GoogleFonts.roboto(),
            fillColor: Colors.white.withOpacity(0.5),
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 08.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24.r),
              borderSide: const BorderSide(color: Colors.transparent, width: 0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24.r),
              borderSide: const BorderSide(color: Colors.transparent, width: 0),
            ),
            focusedBorder: OutlineInputBorder(
              gapPadding: 0.0,
              borderRadius: BorderRadius.circular(24.r),
              borderSide: const BorderSide(color: Colors.transparent, width: 0),
            ),
          ),
        ),
      ),
    );
  }
}
