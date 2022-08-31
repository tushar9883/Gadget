import 'package:find_gadget/unit/theme.dart';
import 'package:find_gadget/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FourPage extends StatefulWidget {
  const FourPage({Key? key}) : super(key: key);

  @override
  State<FourPage> createState() => _FourPageState();
}

class _FourPageState extends State<FourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
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
                    "Basket",
                    textAlign: TextAlign.center,
                    style: Gadget.releway_b.copyWith(
                      color: Colors.black,
                      fontSize: 18.sp,
                    ),
                  ),
                  Image.asset(
                    'assets/images/delete.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomeButton(
                        containerColor: Gadget.primary,
                        textColor: Gadget.white,
                        click: () {},
                        text: "Checkout",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
