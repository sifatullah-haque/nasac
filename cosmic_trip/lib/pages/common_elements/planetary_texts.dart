import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class PlanetaryTexts extends StatelessWidget {
  final String name, details;
  var link;
  PlanetaryTexts({
    super.key,
    required this.details,
    required this.name,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
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
          details,
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 15.sp,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => link,
                    ),
                  );
                },
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
