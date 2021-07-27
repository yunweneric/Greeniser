import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greeniser/presentation/routes/AppRoutes.dart';

import '../../utilities/constants.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldBgColor2,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: screenHeight(context) / 2,
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
                    top: screenHeight(context) / 2.3,
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
                        padding: const EdgeInsets.symmetric(
                              horizontal: 28.0,
                              vertical: 15.0,
                            ) +
                            EdgeInsets.only(top: 10.0),
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Greeniser Events!",
                                  style: GoogleFonts.lato(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    "Countless events to help you grow.\nSignup for events today",
                                    style: GoogleFonts.lato(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  eventCard(
                    title: "Reinovating advocacy",
                    date: 'Jan 12 2021',
                    location: 'Yaounde',
                    ontap: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.eventdetails,
                      );
                    },
                  ),
                  minorSpacer(context),
                  eventCard(
                    title: "Reinovating advocacy",
                    date: 'Jan 12 2021',
                    location: 'Yaounde',
                    ontap: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.eventdetails,
                      );
                    },
                  ),
                  eventCard(
                    title: "Reinovating advocacy",
                    date: 'Jan 12 2021',
                    location: 'Yaounde',
                    ontap: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.eventdetails,
                      );
                    },
                  ),
                  minorSpacer(context),
                  eventCard(
                    title: "Reinovating advocacy",
                    date: 'Jan 12 2021',
                    location: 'Yaounde',
                    ontap: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.eventdetails,
                      );
                    },
                  ),
                  minorSpacer(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card eventCard({title, date, location, ontap}) {
    return Card(
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
                  title,
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
                      date,
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
                      location,
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
            InkWell(
              onTap: ontap,
              child: CircleAvatar(
                child: Icon(
                  Icons.arrow_forward_rounded,
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
