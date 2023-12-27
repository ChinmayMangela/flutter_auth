// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  String imagePath;
  String text;
  MyButton({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163.w,
      height: 56.h,
      decoration: BoxDecoration(
        color: const Color.fromARGB(136, 227, 242, 253),
        borderRadius: BorderRadius.circular(14.w),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SizedBox(
              width: 24.w,
              height: 24.h,
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0).w,
              child: Text(
                text,
                style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
