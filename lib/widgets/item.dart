import 'package:find_gadget/unit/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotFound extends StatefulWidget {
  final title;
  final text;
  final image;
  final height;
  final width;

  const NotFound({
    Key? key,
    this.title,
    this.text,
    this.image,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  State<NotFound> createState() => _NotFoundState();
}

class _NotFoundState extends State<NotFound> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          widget.image,
          height: widget.height,
          width: widget.width,
        ),
        SizedBox(
          height: 18.h,
        ),
        Text(
          widget.title,
          textAlign: TextAlign.center,
          style: Gadget.releway_b.copyWith(
            color: Colors.black,
            fontSize: 28.sp,
          ),
        ),
        SizedBox(
          height: 18.h,
        ),
        Text(
          widget.text,
          textAlign: TextAlign.center,
          style: Gadget.releway_r.copyWith(
            color: const Color(0xff69696B),
            fontSize: 17.sp,
          ),
        ),
      ],
    );
  }
}
