import 'package:find_gadget/screen/home/home_screen.dart';
import 'package:find_gadget/unit/theme.dart';
import 'package:find_gadget/widgets/custome_button.dart';
import 'package:find_gadget/widgets/customer_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final password = TextEditingController();

    return Container(
      color: Gadget.primary,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    color: Gadget.primary,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 88.w, bottom: 10.h),
                          child: Image.asset(
                            "assets/images/login.png",
                            height: 270.h,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 86.h,
                            left: 56.w,
                            right: 50.w,
                          ),
                          child: Text(
                            "Welcome back",
                            style: Gadget.releway_exb.copyWith(
                              color: Colors.white,
                              fontSize: 60.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Gadget.primary,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.r),
                          topRight: Radius.circular(8.r),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x0f000000),
                            blurRadius: 30.r,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30.h,
                                ),
                                Text(
                                  "Login",
                                  style: Gadget.releway_b.copyWith(
                                    color: Colors.black,
                                    fontSize: 18.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 44.h,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/email.png",
                                      height: 24.h,
                                      width: 24.w,
                                    ),
                                    SizedBox(
                                      width: 11.w,
                                    ),
                                    Text(
                                      "Email",
                                      style: Gadget.releway_sb.copyWith(
                                        color: const Color(0xff858585),
                                        fontSize: 15.sp,
                                      ),
                                    )
                                  ],
                                ),
                                CustomeTextfield(
                                  controller: email,
                                ),
                                SizedBox(
                                  height: 45.h,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/lock.png",
                                      height: 24.h,
                                      width: 24.w,
                                    ),
                                    SizedBox(
                                      width: 6.w,
                                    ),
                                    Text(
                                      "Password",
                                      style: Gadget.releway_sb.copyWith(
                                        color: const Color(0xff858585),
                                        fontSize: 15.sp,
                                      ),
                                    )
                                  ],
                                ),
                                CustomeTextfield(
                                  controller: password,
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Forgot passcode?",
                                    style: Gadget.releway_b.copyWith(
                                      color: Gadget.primary,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 62.h,
                                ),
                              ],
                            ),
                          ),
                          CustomeButton(
                            containerColor: Gadget.primary,
                            textColor: Gadget.white,
                            click: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            },
                            text: "Login",
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Text(
                            "Create account",
                            style: Gadget.releway_b.copyWith(
                              color: Gadget.primary,
                              fontSize: 17.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
