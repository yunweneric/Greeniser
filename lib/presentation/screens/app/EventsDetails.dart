import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greeniser/presentation/routes/AppRoutes.dart';
import 'package:greeniser/presentation/utilities/constants.dart';
import 'package:greeniser/presentation/widgets/cardDetails.dart';
import 'package:greeniser/presentation/widgets/subtitle.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({Key? key}) : super(key: key);

  @override
  _EventDetailsState createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AvatarGlow(
        glowColor: Colors.teal,
        endRadius: 50.0,
        duration: Duration(milliseconds: 2000),
        repeat: true,
        showTwoGlows: true,
        repeatPauseDuration: Duration(milliseconds: 100),
        child: FloatingActionButton(
          child: Text('Join'),
          backgroundColor: kprimaryColor,
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenHeight(context) / 2,
                  decoration: BoxDecoration(
                    color: kprimaryColor,
                    image: DecorationImage(
                      image: AssetImage('assets/images/climate3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: screenWidth(context),
                    // height: screenHeight(context) / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: Colors.black38,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Time left',
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            )),
                            textAlign: TextAlign.end,
                          ),
                          Text(
                            '12:44:09 min',
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                            )),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            minorSpacer(context),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CardDetails(
                title: "Event Details",
                additional: "More Info",
              ),
            ),
            majorSpacer(context),
            majorSpacer(context),
          ],
        ),
      ),
    );
  }
}
