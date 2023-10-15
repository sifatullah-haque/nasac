/// This file contains the VenusDetails widget which displays the details of Venus planet.
/// It imports the necessary packages and widgets to build the UI.
/// The widget is a stateless widget that returns a MaterialApp widget.
/// The MaterialApp widget contains a SafeArea widget that has a Scaffold widget as its child.
/// The Scaffold widget has a Column widget as its body that contains the UI elements.
/// The UI elements include an image, a button, and some text.
/// The widget also contains three other stateless widgets: previewImage, PlanetDetailsTexts, and DetailsPageButton.
/// These widgets are used to display the preview images, planet details, and a button respectively.
import 'package:cosmic_trip/pages/constant/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const VenusDetails());

class VenusDetails extends StatelessWidget {
  const VenusDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      builder: (context, child) => MaterialApp(
        title: 'Material App',
        home: SafeArea(
          child: Scaffold(
              body: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/venus/venus1.png"),
                          fit: BoxFit.cover),
                    ),
                  )),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const DetailsPageButton(),
                      SizedBox(height: 15.h),
                      const PlanetDetailsTexts(),
                      SizedBox(height: 15.h),
                      const previewImage(),
                      SizedBox(height: 15.h),
                      SizedBox(
                        height: 50.h,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ThemeColor.primaryLite,
                            elevation: 0.0,
                          ),
                          onPressed: () {},
                          child: Text(
                            "Book a Trip",
                            style: GoogleFonts.roboto(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}

class previewImage extends StatelessWidget {
  const previewImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Preview",
          style: GoogleFonts.poppins(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xff2A2A2A),
          ),
        ),
        SizedBox(height: 8.h),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.asset("assets/venus/venus2.png"),
              SizedBox(width: 10.h),
              Image.asset("assets/venus/venus3.png"),
              SizedBox(width: 10.h),
              Image.asset("assets/venus/venus4.png"),
              SizedBox(width: 10.h),
              Image.asset("assets/venus/venus5.png"),
            ],
          ),
        )
      ],
    );
  }
}

class PlanetDetailsTexts extends StatelessWidget {
  const PlanetDetailsTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Venus, the second planet from the Sun, shrouded in mysteries, awaits exploration and further understanding of its extreme conditions.",
          style: GoogleFonts.poppins(
            fontSize: 17.sp,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Text(
              "Size: ",
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Text("12,104 KM"),
          ],
        ),
        Row(
          children: [
            Text(
              "Year: ",
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Text("243 Earth days"),
          ],
        ),
        Row(
          children: [
            Text(
              "Geological Features: ",
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Text("Volcanic Activity"),
          ],
        ),
      ],
    );
  }
}

class DetailsPageButton extends StatelessWidget {
  const DetailsPageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 50.h,
          width: 165.w,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ThemeColor.primaryBlack,
              elevation: 0.0,
            ),
            onPressed: () {},
            child: Text(
              "Watch Videos",
              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50.h,
          width: 165.w,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ThemeColor.primaryPink,
              elevation: 0.0,
            ),
            onPressed: () {},
            child: Text(
              "Virtual Trip",
              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
