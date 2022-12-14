import 'package:find_gadget/screen/home/pages/widget/custome_container.dart';
import 'package:find_gadget/unit/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/images/back.png',
                    height: 24.w,
                    width: 24.w,
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w),
                child: Text(
                  "My profile",
                  style: Gadget.releway_b.copyWith(
                    color: Colors.black,
                    fontSize: 34.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 42.w),
                height: 190.h,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 167.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x07000000),
                              blurRadius: 40.r,
                              offset: const Offset(0, 10),
                            ),
                          ],
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              60.r,
                            ),
                            child: Container(
                              height: 80.h,
                              width: 80.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                              child: Image.asset(
                                "assets/images/data.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Rosina Doe",
                            textAlign: TextAlign.center,
                            style: Gadget.releway_sb.copyWith(
                              color: Colors.black,
                              fontSize: 18.sp,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20.w,
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/location.png',
                                    height: 24.w,
                                    width: 24.w,
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 14.w,
                                        right: 80.w,
                                      ),
                                      child: Text(
                                        "Address: 43 Oxford Road M13 4GR Manchester, UK",
                                        style: Gadget.releway_r.copyWith(
                                          color: Colors.black,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomeContainer(
                text: "Edit Profile",
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomeContainer(
                text: "Shopping address",
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomeContainer(
                text: "Order history",
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomeContainer(
                text: "Cards",
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomeContainer(
                text: "Notifications",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
