import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
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
            minorSpacer(context),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CardDetails(
                title: "Event Details",
                additional: "More Info",
              ),
            ),
            // headline(
            //   context: context,
            //   title: "Related Events",
            //   secondtitle: "See all",
            //   onclick: () {
            //     Navigator.pushNamed(context, AppRoutes.tips);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
