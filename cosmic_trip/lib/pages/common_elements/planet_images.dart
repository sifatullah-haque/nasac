import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanetImages extends StatelessWidget {
  final String planet;
  const PlanetImages({
    super.key,
    required this.planet,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        planet,
        width: 338.w,
      ),
    );
  }
}
