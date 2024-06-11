import 'package:flutter/material.dart';
import 'package:otofast/shared/theme.dart';
import 'package:otofast/ui/pages/belanja.dart';
import 'package:otofast/ui/pages/history.dart';
import 'package:otofast/ui/pages/profile_edit_success_page.dart';
import 'package:otofast/ui/widgets/home_page.dart';
import 'package:otofast/ui/pages/mekanik.dart';
import 'package:otofast/ui/pages/onboarding_page.dart';
import 'package:otofast/ui/pages/profile_edit_page.dart';
import 'package:otofast/ui/pages/profile_page.dart';
import 'package:otofast/ui/pages/sign_in_page.dart';
import 'package:otofast/ui/pages/sign_up_page.dart';
import 'package:otofast/ui/pages/sign_up_success_page.dart';
import 'package:otofast/ui/pages/splash_page.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: lightBackgroundColor,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(color: blackColor),
            titleTextStyle: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
        )
      ),
      // home: SplashPage(),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/sign-in': (context) => LoginPage(),
        '/sign-up': (context) => RegisterPage(),
        '/sign-up-success': (context) => const SignUpSuccessPage(),
        '/home': (context) => HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/profile-edit': (context) => const ProfileEditPage(),
        '/profile-edit-pin': (context) => const ProfileEditPage(),
        '/profile-edit-success': (context) => const ProfileEditSuccessPage(),
        '/belanja': (context) => ShopHomePage(),
        '/history': (context) => history(),
        '/mekanik': (context) => MekanikPage(),
        
      },
    );
  }
}

