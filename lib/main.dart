import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peer_vendors/screen/home_screen.dart';
import 'package:peer_vendors/screen/intro/choose_language.dart';
import 'package:peer_vendors/screen/intro/onboarding_screen.dart';
import 'package:peer_vendors/screen/intro/splash_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'screen/login/login_screen.dart';
import 'screen/register/register_screen.dart';

int? initScreen;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1); //if already shown -> 1 else 0
  //if already shown -> 1 else 0
  runApp(const MyApp());
}

// Future<void> newMethod() async {
//   SharedPreferences preferences = await SharedPreferences.getInstance();
//
//
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          fontFamily: GoogleFonts.poppins().fontFamily,
          radioTheme: RadioThemeData(
            fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
          )),
      // initialRoute: initScreen == 1 || initScreen == null ? 'splash' : 'home',
      initialRoute: 'splash',
      routes: {
        'splash': (context) => const SplashScreen(),
        'onboard': (context) => const OnboardingScreen(),
        'home': (context) => const HomeScreen(),
        'language': (context) => const ChooseLanguage(),
        'login': (context) => LoginScreen(),
        'register': (context) => RegisterScreen(),
      },
    );
  }
}
