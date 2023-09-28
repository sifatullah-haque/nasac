import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
