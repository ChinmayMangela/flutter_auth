import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAuthButton extends StatelessWidget {
  final String buttonLabel;
  const MyAuthButton({
    super.key,
    required this.buttonLabel,
  });

  @override
  Widget build(BuildContext context) {
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
            buttonLabel,
            style: GoogleFonts.lato(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
