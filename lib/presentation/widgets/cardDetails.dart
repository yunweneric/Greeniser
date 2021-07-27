import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greeniser/presentation/utilities/constants.dart';

class CardDetails extends StatelessWidget {
  final title;
  final additional;
  const CardDetails({Key? key, this.title, this.additional}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              this.title,
              style: GoogleFonts.lato(
                color: kprimaryColor,
                fontSize: 22.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            majorSpacer(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('First name'),
                    minorSpacer(context),
                    Text('Email'),
                    minorSpacer(context),
                    Text('Telephone'),
                    minorSpacer(context),
                    Text('Location'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Yunwen Eric'),
                    minorSpacer(context),
                    Text('yunweneric@gmail.com'),
                    minorSpacer(context),
                    Text('+237670921935'),
                    minorSpacer(context),
                    Text('Douala'),
                  ],
                ),
              ],
            ),
            majorSpacer(context),
            Text(
              this.additional,
              style: GoogleFonts.lato(
                color: kprimaryColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            minorSpacer(context),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 10.0,
              ),
              child: Text(
                lorem(words: 30, paragraphs: 1),
                style: GoogleFonts.lato(
                  height: 1.6,
                  wordSpacing: 2.0,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
