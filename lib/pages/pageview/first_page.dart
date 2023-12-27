import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

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
            width: 302.w,
            height: 302.h,
            child: Image.asset(
              'assets/images/img1.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 25.h),
          Text(
            'The Simple Way to 👌',
            style: TextStyle(fontSize: 30.sp, color: Colors.white),
          ),
          Text(
            'find the best',
            style: TextStyle(
                fontSize: 30.sp,
                color: const Color.fromARGB(180, 255, 255, 255)),
          )
        ],
      ),
    );
  }
}
