import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greeniser/routes/AppRoutes.dart';
import 'package:greeniser/screens/app/HomePage.dart';
import 'package:greeniser/utilities/constants.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.mainPage, (route) => false);
  }

  Widget _buildFullscrenImage() {
    return Image.asset(
      'assets/images/climate1.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 300]) {
    // return Image.asset('assets/images/$assetName', width: width);
    return SvgPicture.asset("assets/svgs/$assetName", width: width);
  }

  Widget _buildImage2(String assetName, [double width = 200]) {
    // return Image.asset('assets/images/$assetName', width: width);
    return SvgPicture.asset("assets/svgs/$assetName", width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
      fontSize: 16.0,
      fontFamily: 'lato',
      height: 1.5,
    );

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.w700,
        color: kprimaryColor,
      ),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.transparent,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            // child: _buildImage('windturbin.svg', 100),
          ),
        ),
      ),

      pages: [
        PageViewModel(
          title: "Hi! Friend",
          body:
              "I am Greeniser! \nI will be teaching you several things these days and I will help you become Ecofriendly, and aiding you save energy at home ",
          image: _buildImage2('undraw_female_avatar_w3jk.svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Manage waste properly",
          body:
              "Proper waste management in an environmental friendly manner, preventing uncesssasary wastage",
          image: _buildImage2('undraw_Throw_away_re_x60k.svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Learn to Conserve Energy",
          body:
              "Recieve tips on how to conserve energy in your home. Get ideas on how to save the environment from detrimental activities caused by indutries around us",
          image: _buildImage('windturbin.svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Promote your Advocacy",
          body:
              "Are you and environnebtal advocate? \nI will help you create awareness of your campeigns",
          image: _buildImage('undraw_Push_notifications_re_t84m (1).svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Join the team",
          body:
              "Join a team of passionate and devoted environmentalists and get engaged as an advocates",
          image: _buildImage('undraw_team_spirit_hrr4.svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Get started",
          body: "Alright, no more waiting! \nLet's get started now",
          image: _buildImage('img2.jpg'),
          footer: Container(
            width: screenWidth(context) / 2,
            child: ElevatedButton(
              onPressed: () {
                _onIntroEnd(context);
              },
              child: const Text(
                'Start',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                primary: kprimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        activeColor: kprimaryColor,
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
