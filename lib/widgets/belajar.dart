import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Online extends StatelessWidget {
  const Online(
      {Key? key,
      required this.courseDuration,
      required this.courseImage,
      required this.courseRating,
      required this.courseTitle})
      : super(key: key);

  final String courseTitle, courseImage, courseDuration;
  final double courseRating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 139,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: 95,
              width: MediaQuery.of(context).size.width -
                  MediaQuery.of(context).size.width * 0.13,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff3E3A6D),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 13,
                      spreadRadius: 0,
                      offset: const Offset(0, 4),
                    )
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 26,
                bottom: 19,
              ),
              child: Row(
                children: [
                  Container(
                    width: 115,
                    height: 115,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(courseImage))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          courseTitle,
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          courseDuration,
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        RatingBar.builder(
                            initialRating: courseRating,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 16,
                            minRating: 1,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 1),
                            allowHalfRating: true,
                            itemBuilder: ((context, _) => const Icon(
                                  Icons.star,
                                  color: Color(0xffF4C465),
                                )),
                            onRatingUpdate: (rating) {
                              print(rating);
                            })
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 34,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.06,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffEB53A2),
                ),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
