import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greeniser/utilities/constants.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
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
              height: screenHeight(context) / 2,
              decoration: BoxDecoration(
                color: kprimaryColor,
                image: DecorationImage(
                  image: AssetImage('assets/images/climate4.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: screenHeight(context) / 2,
                decoration: BoxDecoration(
                  color: kbluecover,
                ),
              ),
            ),
            Positioned(
              top: screenHeight(context) / 2.5,
              right: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: kscaffoldBgColor2,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Trending Events",
                        style: TextStyle(
                            color: kprimaryColor,
                            fontSize: 22,
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
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                    minorSpacer(context),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 25.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Reinovating advocacy",
                                  style: GoogleFonts.lato(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.clock,
                                      size: 12,
                                      color: kprimaryColor,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      '12:09:43 minutes',
                                      style: GoogleFonts.lato(
                                        fontSize: 15,
                                        color: kprimaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.mapMarked,
                                      size: 12,
                                      color: kprimaryColor,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      'Yaounde',
                                      style: GoogleFonts.lato(
                                        fontSize: 15,
                                        color: kprimaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            CircleAvatar(
                              child: Icon(
                                Icons.arrow_forward_rounded,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
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
