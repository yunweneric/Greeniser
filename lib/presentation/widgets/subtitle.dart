import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greeniser/presentation/utilities/constants.dart';

Padding headline({
  required BuildContext context,
  required String title,
  required String secondtitle,
  required VoidCallback onclick,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      children: [
        minorSpacer(context),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                  color: kprimaryColor,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.teal[100],
              ),
              child: GestureDetector(
                onTap: onclick,
                child: Text(
                  secondtitle,
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
