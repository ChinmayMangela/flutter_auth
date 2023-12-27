import 'package:flutter/material.dart';
import 'package:flutter_auth/pageview/first_page.dart';
import 'package:flutter_auth/pageview/second_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int activePage = 0;
  List pages = const [
    FirstPage(),
    SecondPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                activePage = page;
              });
            },
            itemBuilder: (context, index) {
              return pages[index];
            },
            itemCount: pages.length,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 100.h,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(pages.length, (index) {
                  return InkWell(
                    onTap: () => _pageController.animateToPage(index,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.bounceIn),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 6.0),
                      height: 4.h,
                      width: 36.w,
                      decoration: BoxDecoration(
                          color: activePage == index
                              ? Colors.yellow
                              : Colors.yellow[50],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  );
                }),
              ),
              if (activePage == 1)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signUpPage');
                        },
                        child: const Text("Next"),
                      ),
                    ),
                  ],
                )
            ]),
          ),
        ],
      ),
    );
  }
}
