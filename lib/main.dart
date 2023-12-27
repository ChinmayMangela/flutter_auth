import 'package:flutter/material.dart';
import 'package:flutter_auth/pages/auth/forgot_password.dart';
import 'package:flutter_auth/pages/auth/otp_validation_page.dart';
import 'package:flutter_auth/pages/auth/signin_page.dart';
import 'package:flutter_auth/pages/auth/signup_page.dart';
import 'package:flutter_auth/pages/home_page.dart';
import 'package:flutter_auth/start_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        routes: {
          '/signUpPage': (context) => const SignUpPage(),
          '/logInPage': (context) => SignInPage(),
          '/forgotPasswordPage': (context) => ForgotPassword(),
          '/otpValidation': (context) => const OtpValidationPage(),
          '/homePage': (context) => const HomePage(),
        },
        home: const SafeArea(child: StartScreen()),
      ),
      designSize: const Size(393, 852),
    );
  }
}
