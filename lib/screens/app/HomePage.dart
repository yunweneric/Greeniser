import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greeniser/utilities/CustomClipper.dart';
import '../../utilities/constants.dart';
import 'dart:ui' as ui;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldBgColor2,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                CustomPaint(
                  size: Size(
                      screenWidth(context),
                      (screenWidth(context) * 1)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: TweenAnimationBuilder(
                    tween: Tween<double>(
                        begin: screenHeight(context) / 4,
                        end: screenHeight(context) / 2),
                    duration: Duration(milliseconds: 500),
                    builder: (BuildContext context, double val, child) {
                      return Container(
                        height: 250,
                        // decoration: BoxDecoration(
                        //   gradient: LinearGradient(
                        //       begin: Alignment.topRight,
                        //       end: Alignment.bottomLeft,
                        //       colors: [Color(0XFF1A936A), Color(0xff025962)]),
                        //   borderRadius: BorderRadius.only(
                        //     bottomLeft: Radius.circular(20),
                        //     bottomRight: Radius.circular(20),
                        //   ),
                        //   // color: kbluecover2,
                        // ),
                        child: SafeArea(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                  vertical: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: kprimaryColor,
                                      backgroundImage: AssetImage(
                                        "assets/images/climate3.jpg",
                                      ),

                                      // CachedNetworkImage(
                                      //   imageUrl: "assets/images/drink3.jpg",
                                      // ),
                                    )
                                  ],
                                ),
                              ),
                              TweenAnimationBuilder(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30.0,
                                    vertical: 10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Hi Friend!',
                                        style: GoogleFonts.lato(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Let's explore the green world together today!",
                                        style: GoogleFonts.lato(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          height: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                tween: Tween<double>(begin: 0, end: 1),
                                duration: Duration(seconds: 1),
                                builder: (context, double val, child) {
                                  return Opacity(
                                    opacity: val,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: val * 20),
                                      child: child,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Upcoming Events",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w700,
                            color: kprimaryColor,
                          ),
                        ),
                      ),
                      Text(
                        "See all",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint_0.shader = ui.Gradient.linear(
        Offset(0, size.height),
        Offset(size.width, size.height),
        [Color(0xff025962), Color(0XFF1A936A)],
        [0.00, 1.00]);

    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height * 0.8619102);
    path_0.quadraticBezierTo(size.width * 0.9876300, size.height * 0.9894246,
        size.width * 0.9035000, size.height * 0.9743959);
    path_0.cubicTo(
        size.width * 0.7036875,
        size.height * 0.9462745,
        size.width * 0.2665600,
        size.height * 0.8828423,
        size.width * 0.0742500,
        size.height * 0.8619102);
    path_0.quadraticBezierTo(size.width * 0.0131900, size.height * 0.8507595, 0,
        size.height * 0.7612198);
    path_0.lineTo(0, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
