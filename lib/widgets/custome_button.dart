import 'package:find_gadget/unit/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeButton extends StatefulWidget {
  final VoidCallback click;
  final containerColor;
  final textColor;
  final text;

  const CustomeButton({
    Key? key,
    required this.containerColor,
    required this.textColor,
    required this.click,
    required this.text,
  }) : super(key: key);

  @override
  State<CustomeButton> createState() => _CustomeButtonState();
}

class _CustomeButtonState extends State<CustomeButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.w),
      child: InkWell(
        onTap: () {
          widget.click.call();
        },
        child: Container(
          height: 70.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: const Color(0x19000000),
                blurRadius: 40.r,
                offset: const Offset(0, 20),
              ),
            ],
            color: widget.containerColor,
          ),
          child: Center(
            child: Text(
              widget.text,
              style: Gadget.releway_b.copyWith(
                color: widget.textColor,
                fontSize: 20.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
