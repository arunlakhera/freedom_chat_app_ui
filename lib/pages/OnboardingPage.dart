import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freedom_chat_app_ui/pages/HomePage.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context){
    Navigator.push(context, MaterialPageRoute(builder: (_)=> HomePage()));
  }

  Widget _buildImage(String assetName){
    return Align(
      child: Image.asset('assets/$assetName.png',),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {

    const bodyStyle = TextStyle(fontSize: 19);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: IntroductionScreen(
          key: introKey,
          pages: [

            PageViewModel(
                title: 'Title of First Page',
                body: 'Here you can write description..',
                image: Image.asset('assets/images/onboarding_1.png')
            ),
            PageViewModel(
                title: 'Title of Second Page',
                body: 'Here you can write description..',
                image: Image.asset('assets/images/f_icon.png')
            ),
            PageViewModel(
                title: 'Title of Third Page',
                body: 'Here you can write description..',
                image: Image.asset('assets/images/f_icon.png')
            ),

          ],
          onDone: ()=> _onIntroEnd(context),
          showSkipButton: true,
          skipFlex: 0,
          nextFlex: 0,
          skip: Text('Skip'),
          next: Icon(Icons.arrow_forward),
          done: Text('Done', style: TextStyle(fontWeight: FontWeight.w600),),
          dotsDecorator: DotsDecorator(
            size: Size(10.0, 10.0),
            color: Color(0xFFBDBDBD),
            activeSize: Size(22.0, 10.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0))
            )
          ),
        )
      ),
    );
  }
}
