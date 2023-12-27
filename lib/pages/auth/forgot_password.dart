import 'package:flutter/material.dart';
import 'package:flutter_auth/widgets/my_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: EdgeInsets.all(20.h),
        margin: EdgeInsets.only(top: 20.h),
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(88, 44, 144, 226),
                borderRadius: BorderRadius.circular(19).r,
              ),
              width: 90.w,
              height: 90.h,
              child: Image.asset('assets/images/mail.png'),
            ),
            SizedBox(height: 24.h),
            Text(
              'Forget Password',
              style: GoogleFonts.lato(color: Colors.blue, fontSize: 33.sp),
            ),
            SizedBox(height: 20.h),
            MyTextField(
                labelText: 'Email Address',
                textInputType: TextInputType.emailAddress,
                obscure: false,
                myController: _textEditingController),
            SizedBox(height: 20.h),
            forgotPasswordButton(context),
          ],
        ),
      ),
    );
  }

  InkWell forgotPasswordButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/otpValidation');
      },
      child: Container(
        width: 345.w,
        height: 60.h,
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(13),
          ),
        ),
        child: Center(
          child: Text(
            'Forgot Password',
            style: GoogleFonts.lato(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
