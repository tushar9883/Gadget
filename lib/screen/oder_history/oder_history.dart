import 'package:find_gadget/unit/theme.dart';
import 'package:find_gadget/widgets/custome_button.dart';
import 'package:find_gadget/widgets/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OderHistory extends StatefulWidget {
  const OderHistory({Key? key}) : super(key: key);

  @override
  State<OderHistory> createState() => _OderHistoryState();
}

class _OderHistoryState extends State<OderHistory> {
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
                image: 'assets/images/history.png',
                height: 323.w,
                width: 323.w,
                title: "No history yet",
                text: "Hit the orange button down\nbelow to Create an order",
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
                text: "Start ordering",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
