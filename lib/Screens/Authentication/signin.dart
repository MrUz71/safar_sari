import 'package:flutter/material.dart';
import 'package:safar_sari/Reusable_widget/reusable.dart';
import 'package:safar_sari/Screens/Authentication/signup.dart';
import 'package:safar_sari/Screens/Home/home.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

TextEditingController _emaileditingcontroller = TextEditingController();
TextEditingController _passwordeditingcontroller = TextEditingController();

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
            20,
            MediaQuery.of(context).size.height * 0.1,
            20,
            0,
          ),
          child: Column(
            children: [
              LogoSafarSari(),
              SizedBox(
                height: size.height * 0.06,
              ),
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
              reusableTextField(
                "Enter email",
                '  Email',
                Icons.email_outlined,
                false,
                _emaileditingcontroller,
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              reusableTextField(
                "Enter password",
                '  Password',
                Icons.lock_outline,
                true,
                _passwordeditingcontroller,
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              firebaseUIButton(
                context,
                "Sign in now",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ),
                  );
                },
                child: const Text(
                  "Sign up",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: "PlayfairDisplay",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
