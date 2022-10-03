import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Master extends StatelessWidget {
  const Master(
      {Key? key,
      required this.courseHeadLine,
      required this.courseImage,
      required this.courseTitle,
      required this.endColor,
      required this.starColor})
      : super(key: key);

  final int starColor, endColor;
  final String courseHeadLine, courseTitle, courseImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: 246,
        height: 349,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: const Alignment(1, 0.0),
                colors: [Color(starColor), Color(endColor)])),
        child: Stack(
          children: [
            Positioned(
              left: 11,
              top: 15,
              child: Container(
                padding: EdgeInsets.all(10),
                width: 125,
                height: 39,
                decoration: BoxDecoration(
                  color: const Color(0xffAFA8EE),
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Text(
                  courseHeadLine,
                  style: GoogleFonts.roboto(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 88,
              left: 14,
              child: Text(
                courseTitle,
                style: GoogleFonts.roboto(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                courseImage,
                scale: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
