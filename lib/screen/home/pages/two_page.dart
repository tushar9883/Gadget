import 'package:find_gadget/widgets/item.dart';
import 'package:find_gadget/unit/theme.dart';
import 'package:find_gadget/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TwoPage extends StatefulWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  State<TwoPage> createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w, right: 30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/back.png',
                      height: 24.w,
                      width: 24.w,
                    ),
                    Text(
                      "Favorites",
                      textAlign: TextAlign.center,
                      style: Gadget.releway_b.copyWith(
                        color: Colors.black,
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 58.h,
              ),
              NotFound(
                image: 'assets/images/favorite.png',
                height: 280.w,
                width: 280.w,
                title: "No favorites yet",
                text: "Hit the orange button down\nbelow to Create an order",
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: CustomeButton(
                  containerColor: const Color(0xff58C0EA),
                  textColor: Gadget.white,
                  click: () {},
                  text: "Start ordering",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
