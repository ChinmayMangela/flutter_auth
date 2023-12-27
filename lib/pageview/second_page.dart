import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 4, 15, 24),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 301.w,
            height: 215.h,
            child: Image.asset(
              'assets/images/img2.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 90.h),
          Text(
            'The Best Design',
            style: TextStyle(fontSize: 30.sp, color: Colors.white),
          ),
          Text(
            'Strategy',
            style: TextStyle(
                fontSize: 30.sp,
                color: const Color.fromARGB(180, 255, 255, 255)),
          )
        ],
      ),
    );
  }
}
