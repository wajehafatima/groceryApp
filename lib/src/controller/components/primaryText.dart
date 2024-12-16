import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Primarytext extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  const Primarytext({super.key, required this.text,required this.fontWeight,required this.fontSize,required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
       style: GoogleFonts.poppins(fontWeight: fontWeight,
       fontSize: fontSize,
       color: color),
    );
  }
}
