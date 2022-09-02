import 'package:find_gadget/unit/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeDrawer extends StatefulWidget {
  final String image;
  final String name;
  final VoidCallback click;

  const CustomeDrawer({
    Key? key,
    required this.image,
    required this.name,
    required this.click,
  }) : super(key: key);

  @override
  State<CustomeDrawer> createState() => _CustomeDrawerState();
}

class _CustomeDrawerState extends State<CustomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            widget.click.call();
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 42.w,
            ),
            child: Row(
              children: [
                Image.asset(
                  widget.image,
                  height: 24.h,
                  width: 24.w,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  widget.name,
                  style: Gadget.releway_sb.copyWith(
                    fontSize: 14.sp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Container(
          height: 0.5.h,
          width: 130.w,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xfff4f4f8),
              width: 0.5,
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
