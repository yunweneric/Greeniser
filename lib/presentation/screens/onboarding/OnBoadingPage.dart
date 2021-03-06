import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:avatar_glow/avatar_glow.dart';

import '../../routes/AppRoutes.dart';
import '../../utilities/constants.dart';

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

  Widget _buildImage2(String assetName, [double width = 200]) {
    // return Image.asset('assets/images/$assetName', width: width);
    return TweenAnimationBuilder(
      duration: Duration(seconds: 1),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (BuildContext context, double val, child) {
        return Opacity(
          opacity: val,
          child: SvgPicture.asset("assets/svgs/$assetName", width: width),
        );
      },
    );
  }

  Widget _buildImage(String assetName, [double width = 200]) {
    // return Image.asset('assets/images/$assetName', width: width);
    return TweenAnimationBuilder(
      duration: Duration(seconds: 1),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (BuildContext context, double val, child) {
        return Opacity(
          opacity: val,
          child: SvgPicture.asset("assets/svgs/$assetName", width: width),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
      fontSize: 16.0,
      fontFamily: 'lato',
      height: 1.5,
      color: Color(0xff000000),
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
          titleWidget: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hi ",
                    style: pageDecoration.titleTextStyle,
                  ),
                  DefaultTextStyle(
                    style: pageDecoration.titleTextStyle,
                    child: AnimatedTextKit(
                      pause: Duration(seconds: 1),
                      repeatForever: true,
                      animatedTexts: [
                        TyperAnimatedText(
                          'Friend!',
                          speed: Duration(
                            milliseconds: 100,
                          ),
                        ),
                        TyperAnimatedText(
                          'Activist!',
                          speed: Duration(
                            milliseconds: 100,
                          ),
                        ),
                        TyperAnimatedText(
                          'Advocate!',
                          speed: Duration(
                            milliseconds: 100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "I am Greeniser! \nI will be teaching you several things these days and I will help you become Ecofriendly, and aiding you save energy at home ",
                style: pageDecoration.bodyTextStyle,
                textAlign: TextAlign.center,
              )
            ],
          ),
          bodyWidget: Text(
            "",
            style: pageDecoration.bodyTextStyle,
            textAlign: TextAlign.center,
          ),
          image: _buildImage2('undraw_female_avatar_w3jk.svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: DefaultTextStyle(
            style: pageDecoration.titleTextStyle,
            child: AnimatedTextKit(
              pause: Duration(seconds: 5),
              repeatForever: false,
              totalRepeatCount: 4,
              animatedTexts: [
                TyperAnimatedText("Manage waste properly"),
              ],
            ),
          ),
          bodyWidget: Text(
            "Proper waste management in an environmental friendly manner, preventing uncesssasary wastage",
            style: pageDecoration.bodyTextStyle,
            textAlign: TextAlign.center,
          ),
          image: _buildImage2('undraw_Throw_away_re_x60k.svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: DefaultTextStyle(
            style: pageDecoration.titleTextStyle,
            child: AnimatedTextKit(
              pause: Duration(seconds: 5),
              repeatForever: false,
              totalRepeatCount: 4,
              animatedTexts: [
                TyperAnimatedText("Learn to Conserve Energy"),
              ],
            ),
          ),
          body:
              "Recieve tips on how to conserve energy in your home. Get ideas on how to save the environment from detrimental activities caused by indutries around us",
          image: _buildImage('windturbin.svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: DefaultTextStyle(
            style: pageDecoration.titleTextStyle,
            child: AnimatedTextKit(
              pause: Duration(seconds: 5),
              repeatForever: false,
              totalRepeatCount: 4,
              animatedTexts: [
                TyperAnimatedText("Promote your Advocacy"),
              ],
            ),
          ),
          body:
              "Are you and environnebtal advocate? \nI will help you create awareness of your campeigns",
          image: _buildImage('undraw_Push_notifications_re_t84m (1).svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: DefaultTextStyle(
            style: pageDecoration.titleTextStyle,
            child: AnimatedTextKit(
              pause: Duration(seconds: 5),
              repeatForever: false,
              totalRepeatCount: 4,
              animatedTexts: [
                TyperAnimatedText("Join the team"),
              ],
            ),
          ),
          body:
              "Join a team of passionate and devoted environmentalists and get engaged as an advocates",
          image: _buildImage('undraw_team_spirit_hrr4.svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: DefaultTextStyle(
            style: pageDecoration.titleTextStyle,
            child: AnimatedTextKit(
              pause: Duration(seconds: 10),
              repeatForever: true,
              totalRepeatCount: 4,
              animatedTexts: [
                WavyAnimatedText(
                  "Get started!",
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                  ),
                ),
              ],
            ),
          ),
          body: "Alright, no more waiting! \nLet's get started now",
          image: _buildImage('img2.jpg'),
          footer: Container(
            width: screenWidth(context) / 2,
            child: AvatarGlow(
              glowColor: Colors.teal,
              endRadius: 90.0,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              // child: Image.asset('assets/images/climate1.jpg'),
              child: ElevatedButton(
                onPressed: () {
                  _onIntroEnd(context);
                },
                child: const Text(
                  'Start',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                  primary: kprimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
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
