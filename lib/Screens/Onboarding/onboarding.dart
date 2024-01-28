import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:safar_sari/Screens/Authentication/signin.dart';
import 'package:safar_sari/Screens/Home/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingPage extends StatelessWidget {
   OnboardingPage({super.key});
  final List<Introduction> list = [
    Introduction(
      title: 'Fashion Store',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: 'assets/images/Onbording/1.png',
    ),
    Introduction(
      title: 'Delivery',
      subTitle: 'Your order will be immediately collected and',
      imageUrl: 'assets/images/Onbording/2.png',
    ),
    Introduction(
      title: 'Receive Money',
      subTitle: 'Pick up delivery at your door and enjoy groceries',
      imageUrl: 'assets/images/Onbording/3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    _storeOnboardInfo() async {
      print("Shared pref called");
      int isViewed = 0;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt('onBoard', isViewed);
      print(prefs.getInt('onBoard'));
    }
    return  IntroScreenOnboarding(
      backgroudColor: const Color(0xFFf9f9f9),
      foregroundColor: const Color(0xFF5F5FF6),
      introductionList: list,
      onTapSkipButton: () {
        // _storeOnboardInfo();
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignInPage(),
            ));
      },
      skipTextStyle: const TextStyle(
        color: Colors.blueGrey,
        fontSize: 18,
      ),
    );
  }
}
