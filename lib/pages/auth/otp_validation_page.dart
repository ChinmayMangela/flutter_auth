import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpValidationPage extends StatelessWidget {
  const OtpValidationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
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
                'Enter OTP',
                style: GoogleFonts.lato(color: Colors.blue, fontSize: 33.sp),
              ),
              SizedBox(height: 20.h),
              Text(
                'Enter the OTP code we just sent',
                style: GoogleFonts.lato(
                  color: Colors.black,
                ),
              ),
              Text(
                'you on your registered Email Address',
                style: GoogleFonts.lato(
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.h),
              OtpTextField(
                filled: true,
                fillColor: const Color.fromARGB(29, 33, 149, 243),
                borderRadius: BorderRadius.circular(15),
                numberOfFields: 5,
                fieldWidth: 60.w,
                showFieldAsBox: true,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 26.h),
              verifyOtp(),
              Row(
                children: [
                  Text(
                    'Didn\'t get OTP?',
                    style: GoogleFonts.lato(color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend OTP',
                      style: GoogleFonts.lato(color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  InkWell verifyOtp() {
    return InkWell(
      onTap: () {},
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
            'Verify',
            style: GoogleFonts.lato(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
