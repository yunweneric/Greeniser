import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greeniser/presentation/routes/AppRoutes.dart';
import 'package:greeniser/presentation/widgets/eventflyer.dart';
import 'package:greeniser/presentation/widgets/homepageclipper.dart';
import 'package:greeniser/presentation/widgets/subtitle.dart';
import '../../utilities/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String profileUrl = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldBgColor2,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                TweenAnimationBuilder(
                  tween: Tween<double>(
                      begin: screenHeight(context) / 4,
                      end: screenHeight(context)),
                  duration: Duration(milliseconds: 1000),
                  builder: (BuildContext context, double val, child) {
                    return CustomPaint(
                      size: Size(
                        val,
                        (screenWidth(context) * 1).toDouble(),
                      ),
                      painter: RPSCustomPainter(),
                    );
                  },
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
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
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      AppRoutes.notifications,
                                    );
                                  },
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: kprimaryColor,
                                    child: Icon(
                                      Icons.notifications_active,
                                    ),
                                  ),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                            duration: Duration(milliseconds: 700),
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
                  ),
                ),
              ],
            ),
            headline(
              context: context,
              title: "Upcoming Events",
              secondtitle: "see all",
              onclick: () {
                Navigator.pushNamed(context, AppRoutes.events);
              },
            ),
            majorSpacer(context),
            EventFlyer(
              imgUrl: "assets/images/climate2.jpg",
              flyerImgUrl: "assets/images/climate4.jpg",
            ),
            minorSpacer(context),
            EventFlyer(
              imgUrl: "assets/images/climate1.jpg",
              flyerImgUrl: "assets/images/climate3.jpg",
            ),
            majorSpacer(context),
            headline(
              context: context,
              title: "Pro Tips",
              secondtitle: "see all",
              onclick: () {
                Navigator.pushNamed(context, AppRoutes.tips);
              },
            ),
            majorSpacer(context),
            EventFlyer(
              imgUrl: "assets/images/climate1.jpg",
              flyerImgUrl: "assets/images/climate2.jpg",
            ),
            minorSpacer(context),
            EventFlyer(
              imgUrl: "assets/images/climate4.jpg",
              flyerImgUrl: "assets/images/climate5.jpg",
            ),
            majorSpacer(context),
            majorSpacer(context),
          ],
        ),
      ),
    );
  }
}
