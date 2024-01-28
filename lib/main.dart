import 'package:flutter/material.dart';
import 'package:safar_sari/Screens/Onboarding/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/Authentication/signin.dart';
int? isviewed;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getInt('onBoard');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: isviewed != 0 ? OnboardingPage() : SignInPage(),
    );
  }
}

