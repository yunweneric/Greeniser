import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greeniser/presentation/routes/AppRoutes.dart';
import 'package:greeniser/presentation/utilities/constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool loggedin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loggedin == true
          ? SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: screenHeight(context) / 2.5,
                    child: Stack(
                      children: [
                        Container(
                          height: screenHeight(context) / 3,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: kbluecover2,
                                offset: Offset(
                                  0.0,
                                  5.0,
                                ),
                              ),
                              BoxShadow(color: Colors.black),
                            ],
                            image: DecorationImage(
                              image: AssetImage('assets/images/climate4.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0),
                            ),
                          ),
                          width: screenWidth(context),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 80.0,
                                backgroundImage: AssetImage(
                                  'assets/images/user.jpg',
                                ),
                              ),
                              majorSpacer(context),
                            ],
                          ),
                        ),
                        Positioned(
                          top: screenHeight(context) / 15,
                          right: screenWidth(context) / 15,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamedAndRemoveUntil(context,
                                  AppRoutes.loginScreen, (route) => false);
                            },
                            child: CircleAvatar(
                              child: Icon(
                                Icons.logout,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight(context) / 3.4,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 30.0,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 15.0,
                                    color: kbluecover2,
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                  ),
                                ],
                              ),
                              width: screenWidth(context) / 3,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        Text('20 '),
                                        Icon(
                                          Icons.favorite_rounded,
                                          size: 20.0,
                                          color: kprimaryColor,
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('5 '),
                                        Icon(
                                          Icons.comment,
                                          size: 20.0,
                                          color: kprimaryColor,
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('9k '),
                                        Icon(
                                          Icons.post_add_rounded,
                                          size: 20.0,
                                          color: kprimaryColor,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: screenWidth(context),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 10.0,
                      ),
                      child: Stack(
                        children: [
                          detailsCard(context),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: CircleAvatar(
                              child: Icon(
                                Icons.mode_edit_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  majorSpacer(context)
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: kprimaryRed,
                    radius: 30.0,
                    child: Icon(
                      Icons.account_circle_sharp,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 30,
                        ),
                        child: Text(
                          "No Account Setup yet\n Create account now!",
                          style: GoogleFonts.lato(
                            fontSize: 15.0,
                            height: 1.6,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, AppRoutes.createAccount);
                        },
                        child: Icon(
                          Icons.login,
                          color: kprimaryColor,
                          size: 30.0,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
    );
  }

  Card detailsCard(BuildContext context) {
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
              'Profile Details',
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
              'About me',
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
