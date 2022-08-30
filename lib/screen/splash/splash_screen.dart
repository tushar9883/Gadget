import 'package:find_gadget/screen/login/login_screen.dart';
import 'package:find_gadget/unit/theme.dart';
import 'package:find_gadget/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Gadget.primary,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Gadget.primary,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 70.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: Text(
                    "Find your Gadget",
                    style: Gadget.releway_exb.copyWith(
                      fontSize: 50.sp,
                      color: Gadget.white,
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/splash.png",
                ),
                CustomeButton(
                  text: "Get started",
                  click: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  containerColor: Gadget.white,
                  textColor: Gadget.primary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
