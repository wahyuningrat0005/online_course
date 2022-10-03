import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_course/widgets/listdetail.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  bottomRight: Radius.circular(22)),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(1, 0.0),
                  colors: [
                    Color(0xffF4C465),
                    Color(0xffC63956),
                  ]),
              image: DecorationImage(
                alignment: Alignment.bottomRight,
                image: AssetImage('assets/images/img_saly36.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 22,
              right: 20,
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingBar.builder(
                    itemCount: 5,
                    itemSize: 16,
                    minRating: 1,
                    initialRating: 3,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1),
                    itemBuilder: ((context, _) => const Icon(
                          Icons.star,
                          color: Color(0xffF4C465),
                        )),
                    onRatingUpdate: (rating) {
                      print(rating);
                    }),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "GRAPHIC DESIGNER BEGINNER",
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 113,
                          child: Stack(children: [
                            Positioned(
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/img_user1.png'),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 22,
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/img_user2.png'),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                left: 44,
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/img_user3.png'),
                                    ),
                                  ),
                                )),
                            Positioned(
                                left: 66,
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/img_user4.png'),
                                    ),
                                  ),
                                ))
                          ]),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "+28 Members",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffcacaca),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 47,
                      width: 57,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xff353567),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 12,
                        ),
                        child: Icon(
                          Icons.heart_broken,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListDetail();
              })
        ],
      ),
    );
  }
}
