import 'package:flutter/material.dart';
import 'package:flutter_auth/widgets/my_auth_button.dart';
import 'package:flutter_auth/widgets/my_button.dart';
import 'package:flutter_auth/widgets/my_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  bool _isChecked = false;
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
                  child: Image.asset('assets/images/Claps.png'),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Sign Up',
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
                    labelText: 'Name',
                    textInputType: TextInputType.name,
                    obscure: false,
                    myController: nameController),
                SizedBox(height: 20.h),
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
                SizedBox(height: 20.h),
                Row(
                  children: [
                    myCheckBox(),
                    Text(
                      'I am agree to The ',
                      style: GoogleFonts.lato(),
                    ),
                    Text(
                      'Terms of Service ',
                      style: GoogleFonts.lato(color: Colors.blue),
                    ),
                    Text(
                      'and ',
                      style: GoogleFonts.lato(),
                    ),
                    Text(
                      'Privacy',
                      style: GoogleFonts.lato(color: Colors.blue),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 230).w,
                  child: Text(
                    'Policy',
                    style: GoogleFonts.lato(color: Colors.blue),
                  ),
                ),
                SizedBox(height: 27.h),
                const MyAuthButton(buttonLabel: 'Create Account'),
                SizedBox(height: 12.h),
                Row(
                  children: [
                    Text(
                      'Do you have account?',
                      style: GoogleFonts.lato(),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/logInPage');
                      },
                      child: Text(
                        'Sign in',
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

  Checkbox myCheckBox() {
    return Checkbox(
      checkColor: Colors.white,
      activeColor: Colors.blue,
      value: _isChecked,
      onChanged: (value) {
        setState(
          () {
            _isChecked = !_isChecked;
          },
        );
      },
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
