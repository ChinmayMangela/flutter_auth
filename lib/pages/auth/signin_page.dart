import 'package:flutter/material.dart';
import 'package:flutter_auth/widgets/my_auth_button.dart';
import 'package:flutter_auth/widgets/my_button.dart';
import 'package:flutter_auth/widgets/my_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24.0, top: 67).w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 90.w,
                  height: 90.h,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(88, 44, 144, 226),
                    borderRadius: BorderRadius.circular(19).r,
                  ),
                  child: Image.asset('assets/images/Wave.png'),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyButton(
                      imagePath: 'assets/images/facebook_logo.png',
                      text: 'FACEBOOK',
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    MyButton(
                      imagePath: 'assets/images/google_logo.png',
                      text: 'GOOGLE',
                    ),
                  ],
                ),
                Row(
                  children: [
                    divider(),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Or',
                        style: GoogleFonts.lato(),
                      ),
                    ),
                    divider(),
                  ],
                ),
                MyTextField(
                    labelText: 'Email Address',
                    textInputType: TextInputType.emailAddress,
                    obscure: false,
                    myController: emailController),
                SizedBox(height: 20.h),
                MyTextField(
                    labelText: 'Password',
                    textInputType: TextInputType.visiblePassword,
                    obscure: true,
                    myController: passwordController),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/forgotPasswordPage');
                      },
                      child: Text(
                        'Forgot Password?',
                        style: GoogleFonts.lato(color: Colors.grey),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                const MyAuthButton(buttonLabel: 'Log In'),
                SizedBox(height: 12.h),
                Row(
                  children: [
                    Text(
                      'Dont have account ?',
                      style: GoogleFonts.lato(),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign up',
                        style: GoogleFonts.lato(color: Colors.blue),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded divider() {
    return const Expanded(
      child: Divider(
        color: Colors.grey,
      ),
    );
  }
}
