import 'package:flutter/material.dart';
import 'package:safar_sari/Reusable_widget/reusable.dart';

import '../Home/home.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

TextEditingController _emaileditingcontroller = TextEditingController();
TextEditingController _passwordeditingcontroller = TextEditingController();
TextEditingController _usereditingcontroller = TextEditingController();

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
            20,
            MediaQuery.of(context).size.height * 0.17,
            20,
            0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "PlayfairDisplay",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: "PlayfairDisplay",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const Text(
                  'Please fill your informations',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "PlayfairDisplay",
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                reusableTextField("Enter user", "  User", Icons.person_outline, false, _usereditingcontroller),
                SizedBox(
                  height: size.height * 0.015,
                ),
                reusableTextField("Enter email", "  Email", Icons.email_outlined, false, _emaileditingcontroller),
                SizedBox(
                  height: size.height * 0.015,
                ),
                reusableTextField("Enter Password", "  Password", Icons.lock_outline, true, _passwordeditingcontroller),
                SizedBox(
                  height: size.height * 0.05,
                ),
                firebaseUIButton(
                  context,
                  "Done",
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                ),
              ],
          ),
        ),
      ),
    );
  } 
}
