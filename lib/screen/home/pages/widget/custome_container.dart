import 'package:find_gadget/unit/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeContainer extends StatefulWidget {
  final text;
  const CustomeContainer({Key? key, required this.text}) : super(key: key);

  @override
  State<CustomeContainer> createState() => _CustomeContainerState();
}

class _CustomeContainerState extends State<CustomeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 42.w),
      height: 60.h,
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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.text,
              style: Gadget.releway_b.copyWith(
                color: Colors.black,
                fontSize: 18.sp,
              ),
            ),
            Image.asset(
              'assets/images/back_left.png',
              height: 24.w,
              width: 24.w,
            ),
          ],
        ),
      ),
    );
  }
}
