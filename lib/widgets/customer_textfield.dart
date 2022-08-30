import 'package:find_gadget/unit/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeTextfield extends StatefulWidget {
  final controller;

  const CustomeTextfield({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<CustomeTextfield> createState() => _CustomeTextfieldState();
}

class _CustomeTextfieldState extends State<CustomeTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Gadget.releway_sb.copyWith(
        color: Colors.black,
        fontSize: 17.sp,
      ),
      controller: widget.controller,
      cursorColor: Gadget.primary,
      decoration: const InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Gadget.primary,
          ),
        ),
      ),
    );
  }
}
