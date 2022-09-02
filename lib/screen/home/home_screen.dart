import 'package:find_gadget/screen/home/pages/home.dart';
import 'package:find_gadget/screen/home/pages/basket.dart';
import 'package:find_gadget/screen/home/pages/profile.dart';
import 'package:find_gadget/screen/home/pages/favorite.dart';
import 'package:find_gadget/unit/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  final pages = [
    const Home(),
    const Favorite(),
    const Profile(),
    const Basket(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Gadget.white_lite,
      bottomNavigationBar: buildMyNavBar(context),
      body: pages[pageIndex],
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                pageIndex = 0;
              });
            },
            child: Container(
              height: 24.h,
              width: 24.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                boxShadow: [
                  pageIndex == 0
                      ? BoxShadow(
                          color: const Color(0xff5956e9),
                          offset: const Offset(
                            0.0,
                            1.0,
                          ),
                          blurRadius: 30.r,
                          spreadRadius: 0.5,
                        )
                      : BoxShadow(
                          color: Gadget.white_lite,
                          blurRadius: 0.r,
                        ),
                ],
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/home.png',
                  height: 24.h,
                  width: 24.w,
                  color: pageIndex == 0 ? Gadget.primary : Colors.black,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                pageIndex = 1;
              });
            },
            child: Container(
              height: 24.h,
              width: 24.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                boxShadow: [
                  pageIndex == 1
                      ? BoxShadow(
                          color: const Color(0xff5956e9),
                          offset: const Offset(
                            0.0,
                            1.0,
                          ),
                          blurRadius: 30.r,
                          spreadRadius: 0.5,
                        )
                      : BoxShadow(
                          color: Gadget.white_lite,
                          blurRadius: 0.r,
                        ),
                ],
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/heart.png',
                  height: 24.h,
                  width: 24.w,
                  color: pageIndex == 1 ? Gadget.primary : Colors.black,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                pageIndex = 2;
              });
            },
            child: Container(
              height: 24.h,
              width: 24.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                boxShadow: [
                  pageIndex == 2
                      ? BoxShadow(
                          color: const Color(0xff5956e9),
                          offset: const Offset(
                            0.0,
                            1.0,
                          ),
                          blurRadius: 30.r,
                          spreadRadius: 0.5,
                        )
                      : BoxShadow(
                          color: Gadget.white_lite,
                          blurRadius: 0.r,
                        ),
                ],
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/profile.png',
                  height: 24.h,
                  width: 24.w,
                  color: pageIndex == 2 ? Gadget.primary : Colors.black,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                pageIndex = 3;
              });
            },
            child: Container(
              height: 24.h,
              width: 24.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                boxShadow: [
                  pageIndex == 3
                      ? BoxShadow(
                          color: const Color(0xff5956e9),
                          offset: const Offset(
                            0.0,
                            1.0,
                          ),
                          blurRadius: 30.r,
                          spreadRadius: 0.5,
                        )
                      : BoxShadow(
                          color: Gadget.white_lite,
                          blurRadius: 0.r,
                        ),
                ],
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/buy.png',
                  height: 24.h,
                  width: 24.w,
                  color: pageIndex == 3 ? Gadget.primary : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
