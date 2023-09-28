import 'package:cosmic_trip/pages/slider_page/slider_pages.dart';
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
              body: SliderPages(),
            ),
          ),
        ),
      ),
    );
  }
}
