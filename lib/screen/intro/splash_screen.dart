import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:peer_vendors/main.dart';
import 'package:peer_vendors/screen/home_screen.dart';

import '../../constants/color.dart';
import '../../constants/image_assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextRoute: initScreen == 1 || initScreen == 0 ? 'home' : 'language',
      backgroundColor: ColorBlock.white,
      splashIconSize: MediaQuery.of(context).size.shortestSide * 0.7,
      splash: Assets.logo,
      splashTransition: SplashTransition.fadeTransition,
      nextScreen: const HomeScreen(),
    );
  }
}
