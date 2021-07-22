import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:google_fonts/google_fonts.dart';
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
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
        child: BottomAppBar(
          elevation: 0,
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.share_rounded,
                      color: Colors.grey,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.nights_stay_outlined,
                      color: Colors.grey,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.format_size_outlined,
                      color: Colors.grey,
                    ),
                    onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: kscaffoldBgColor2,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  height: screenHeight(context) / 2.5,
                  decoration: BoxDecoration(
                    color: kprimaryColor,
                    image: DecorationImage(
                      image: AssetImage('assets/images/climate2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: screenHeight(context) / 2.5,
                  decoration: BoxDecoration(
                    color: kblackcover,
                  ),
                ),
                Container(
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
                // Positioned(
                //   bottom: 20,
                //   right: 20,
                //   child: CircleAvatar(
                //     backgroundColor: Colors.teal[100],
                //     child: Icon(
                //       Icons.download,
                //       color: Colors.blueGrey,
                //     ),
                //   ),
                // )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                minorSpacer(context),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28.0,
                    vertical: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today's Tip",
                        style: TextStyle(
                          color: kprimaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.teal[100],
                        child: Icon(
                          Icons.download,
                          color: Colors.blueGrey,
                        ),
                      )
                    ],
                  ),
                ),
                // majorSpacer(context),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'A',
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 32,
                        )),
                    TextSpan(
                      text: lorem(paragraphs: 2),
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.7,
                        wordSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            majorSpacer(context)
          ],
        ),
      ),
    );
  }
}
