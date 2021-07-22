import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greeniser/presentation/routes/AppRoutes.dart';
import 'package:greeniser/presentation/utilities/constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
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
    ));
  }
}
