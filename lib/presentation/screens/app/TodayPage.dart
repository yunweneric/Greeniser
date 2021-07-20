import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../routes/AppRoutes.dart';
import '../../utilities/constants.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  _TodayPageState createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldBgColor2,
      body: Container(
        height: screenHeight(context),
        width: screenWidth(context),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Container(
              height: screenHeight(context) / 3,
              decoration: BoxDecoration(
                color: kprimaryColor,
                image: DecorationImage(
                  image: AssetImage('assets/images/climate2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: screenHeight(context) / 3,
                decoration: BoxDecoration(
                  color: kbluecover,
                ),
              ),
            ),
            Positioned(
              top: screenHeight(context) / 3.8,
              right: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: kscaffoldBgColor2,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today's Tip",
                        style: TextStyle(
                            color: kprimaryColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      majorSpacer(context),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight(context) / 8,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Greeniser Today!",
                      style: GoogleFonts.lato(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Let's save the planet, lets's save earth",
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
