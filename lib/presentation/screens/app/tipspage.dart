import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greeniser/presentation/routes/AppRoutes.dart';
import 'package:greeniser/presentation/utilities/constants.dart';

class Tips extends StatefulWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  @override
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
                    height: screenHeight(context) / 3,
                    decoration: BoxDecoration(
                      color: kprimaryColor,
                      image: DecorationImage(
                        image: AssetImage('assets/images/climate3.jpg'),
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
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                              horizontal: 28.0,
                              vertical: 20.0,
                            ) +
                            EdgeInsets.only(top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Categories",
                              style: TextStyle(
                                color: kprimaryColor,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
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
                                  "Greeniser Tips!",
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
                                    "Get productive today from a vast categories we have",
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            minorSpacer(context),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Wrap(
                        runAlignment: WrapAlignment.start,
                        spacing: 0.0,
                        children: [
                          category(
                              title: "Climate change",
                              timeout: 800,
                              onclick: () {}),
                          category(title: "Air", timeout: 1200, onclick: () {}),
                          category(
                              title: "Global warming",
                              timeout: 1600,
                              onclick: () {}),
                          category(
                              title: "Waste", timeout: 2000, onclick: () {}),
                          category(
                              title: "water", timeout: 2900, onclick: () {}),
                          category(
                              title: "Pollution",
                              timeout: 1600,
                              onclick: () {}),
                        ],
                      ),
                    ],
                  ),
                  majorSpacer(context),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      "Trending Tips",
                      style: TextStyle(
                          color: kprimaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  eventCard(
                    title: "Reinovating advocacy",
                    date: 'Jan 12 2021',
                    location: 'ISEC Yaounde',
                    onclick: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.today,
                      );
                    },
                  ),
                  minorSpacer(context),
                  eventCard(
                    title: "Reinovating advocacy",
                    date: 'Jan 12 2021',
                    location: 'The Greens',
                    onclick: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.today,
                      );
                    },
                  ),
                  eventCard(
                    title: "Reinovating advocacy",
                    date: 'Jan 12 2021',
                    location: 'Majority',
                    onclick: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.today,
                      );
                    },
                  ),
                  minorSpacer(context),
                  eventCard(
                    title: "Reinovating advocacy",
                    date: 'Jan 12 2021',
                    location: 'Clean planet',
                    onclick: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.today,
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

  category({title, onclick, timeout}) {
    return TweenAnimationBuilder(
      curve: Curves.easeInOutQuad,
      duration: Duration(milliseconds: timeout),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (BuildContext context, double val, child) {
        return Opacity(
          opacity: val,
          child: GestureDetector(
            onTap: onclick,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: kprimaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 10.0,
                  ),
                  child: Text(
                    title,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Card eventCard({title, date, location, onclick}) {
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
                      FontAwesomeIcons.solidUserCircle,
                      size: 15,
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
              onTap: onclick,
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
