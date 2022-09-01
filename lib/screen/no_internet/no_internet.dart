import 'package:find_gadget/unit/theme.dart';
import 'package:find_gadget/widgets/custome_button.dart';
import 'package:find_gadget/widgets/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoInternet extends StatefulWidget {
  const NoInternet({Key? key}) : super(key: key);

  @override
  State<NoInternet> createState() => _NoInternetState();
}

class _NoInternetState extends State<NoInternet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 28.w,
                right: 28.w,
              ),
              child: NotFound(
                image: 'assets/images/wifi.png',
                height: 208.h,
                width: 360.w,
                title: "No internet Connection",
                text:
                    "Your internet connection is currently\nnot available please check or try again.",
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: CustomeButton(
                containerColor: const Color(0xff58C0EA),
                textColor: Gadget.white,
                click: () {},
                text: "Try again",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
