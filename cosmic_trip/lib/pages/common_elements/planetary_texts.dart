import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PlanetaryTexts extends StatelessWidget {
  final String name, details;
  const PlanetaryTexts({
    super.key,
    required this.details,
    required this.name,
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
