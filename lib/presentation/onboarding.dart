import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/decoration_style.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {


    final listPagesViewModel = [
      _buildPageViewModel(
        title: "Welcome to Plantify",
        body:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
        imagePath: "assets/onboarding/onboarding1.png",
      ),
      _buildPageViewModel(
        title: "Lorem ipsum dolor",
        body:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
        imagePath: "assets/onboarding/onboarding2.png",
      ),
      _buildPageViewModel(
        title: "Get Started",
        body:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
        imagePath: "assets/onboarding/onboarding3.png",
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: listPagesViewModel,
          showSkipButton: true,
          skip: const Text(
            "Skip",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          onSkip: () {
            _setOnboardingScreenState();
            Navigator.pushNamed(context, '/login');
          },
          done: const Text(
            "Done",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          onDone: _onDoneCompleteOnboarding,
          next: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }

  _onDoneCompleteOnboarding() async{
    _setOnboardingScreenState();
    Navigator.pushReplacementNamed(context, '/login');
  }

  _setOnboardingScreenState() async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('walkthroughSeen', true);
  }

  PageViewModel _buildPageViewModel({
    required String title,
    required String body,
    required String imagePath,
  }) {
    return PageViewModel(
      title: title,
      body: body,
      image: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      ),
      decoration: pageDecoration.copyWith(
        bodyFlex: 6,
        imageFlex: 10,
      ),
    );
  }
}
