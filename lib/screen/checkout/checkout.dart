import 'package:find_gadget/screen/home/home_screen.dart';
import 'package:find_gadget/unit/theme.dart';
import 'package:find_gadget/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckOut extends StatefulWidget {
  final itemvalue;

  const CheckOut({Key? key, this.itemvalue}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int radioSelected = 1;
  late String radioVal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w, right: 30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/images/back.png',
                        height: 24.w,
                        width: 24.w,
                      ),
                    ),
                    Text(
                      "Checkout",
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
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 50.w,
                ),
                child: Row(
                  children: [
                    Text(
                      "Shipping information",
                      style: Gadget.releway_sb.copyWith(
                        color: Colors.black,
                        fontSize: 17.sp,
                      ),
                    ),
                    SizedBox(
                      width: 80.w,
                    ),
                    Text(
                      "change",
                      textAlign: TextAlign.right,
                      style: Gadget.releway_sb.copyWith(
                        color: Gadget.primary,
                        fontSize: 15.sp,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w),
                child: Container(
                  // height: 166.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
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
                    padding: EdgeInsets.only(
                      left: 30.w,
                      top: 20.h,
                      right: 30.w,
                      bottom: 20.h,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/profile.png',
                              height: 24.h,
                              width: 24.h,
                            ),
                            SizedBox(
                              width: 11.w,
                            ),
                            Text(
                              "Rosina Doe",
                              style: Gadget.releway_r.copyWith(
                                color: Colors.black,
                                fontSize: 17.sp,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/location.png',
                              height: 24.h,
                              width: 24.h,
                            ),
                            SizedBox(
                              width: 11.w,
                            ),
                            Expanded(
                              child: Text(
                                "43 Oxford Road M13 4GR Manchester, UK",
                                style: Gadget.releway_r.copyWith(
                                  color: Colors.black,
                                  fontSize: 17.sp,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/call.png',
                              height: 24.h,
                              width: 24.h,
                            ),
                            SizedBox(
                              width: 11.w,
                            ),
                            Expanded(
                              child: Text(
                                "+234 9011039271",
                                style: Gadget.releway_r.copyWith(
                                  color: Colors.black,
                                  fontSize: 17.sp,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 50.w,
                ),
                child: Text(
                  "Payment Method",
                  style: Gadget.releway_sb.copyWith(
                    color: Colors.black,
                    fontSize: 17.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 50.w,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
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
                    padding: EdgeInsets.only(
                      left: 24.w,
                      top: 20.h,
                      right: 24.w,
                      bottom: 20.h,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: radioSelected,
                              onChanged: (value) {
                                setState(() {
                                  radioSelected = value as int;
                                  radioVal = 'visa';
                                });
                              },
                            ),
                            Image.asset(
                              'assets/images/visa.png',
                              width: 60.w,
                              height: 40.h,
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Text(
                              "**** **** **** 1234",
                              textAlign: TextAlign.center,
                              style: Gadget.releway_r.copyWith(
                                fontSize: 17.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: radioSelected,
                              onChanged: (value) {
                                setState(() {
                                  radioSelected = value as int;
                                  radioVal = 'master';
                                });
                              },
                            ),
                            Image.asset(
                              'assets/images/master.png',
                              width: 60.w,
                              height: 40.h,
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Text(
                              "**** **** **** 1234",
                              textAlign: TextAlign.center,
                              style: Gadget.releway_r.copyWith(
                                fontSize: 17.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: radioSelected,
                              onChanged: (value) {
                                setState(() {
                                  radioSelected = value as int;
                                  radioVal = 'card';
                                });
                              },
                            ),
                            Image.asset(
                              'assets/images/bank.png',
                              width: 60.w,
                              height: 40.h,
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Text(
                              "**** **** **** 1234",
                              textAlign: TextAlign.center,
                              style: Gadget.releway_r.copyWith(
                                fontSize: 17.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: Gadget.releway_r.copyWith(
                        color: Colors.black,
                        fontSize: 17.sp,
                      ),
                    ),
                    Text(
                      "\$ 589",
                      textAlign: TextAlign.right,
                      style: Gadget.releway_b.copyWith(
                        color: Gadget.primary,
                        fontSize: 22.sp,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              CustomeButton(
                text: "Confirm and pay",
                textColor: Colors.white,
                containerColor: Gadget.primary,
                click: () {
                  showModalBottomSheet(
                    context: context,
                    barrierColor: Colors.black.withOpacity(0.03),
                    backgroundColor: Colors.transparent,
                    builder: (BuildContext context) => buildSheet(),
                  );
                },
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSheet() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 50.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 44.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Confirm and pay",
                        style: Gadget.releway_sb.copyWith(
                          color: Colors.black,
                          fontSize: 17.sp,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Products:",
                            textAlign: TextAlign.right,
                            style: Gadget.releway_sb.copyWith(
                                fontSize: 14.sp, color: Gadget.khakhi),
                          ),
                          Text(
                            " ${widget.itemvalue}",
                            textAlign: TextAlign.right,
                            style: Gadget.releway_sb
                                .copyWith(fontSize: 14.sp, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: const Color(0xffd5d9e0),
                        width: 1.w,
                      ),
                      color: const Color(0xfff4f6fa),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 18.w,
                        right: 15.w,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 14.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "My credit card",
                                style: Gadget.releway_sb.copyWith(
                                  color: Colors.black,
                                  fontSize: 17.sp,
                                ),
                              ),
                              Image.asset(
                                radioSelected == 1
                                    ? 'assets/images/visa.png'
                                    : radioSelected == 2
                                        ? 'assets/images/master.png'
                                        : radioSelected == 3
                                            ? 'assets/images/bank.png'
                                            : "",
                                width: 60.w,
                                height: 40.h,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "**** **** **** 1234",
                                style: Gadget.releway_r.copyWith(
                                  color: Colors.black,
                                  fontSize: 30.sp,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Rosina Doe",
                                style: Gadget.releway_sb.copyWith(
                                  color: const Color(0xff858585),
                                  fontSize: 15.sp,
                                ),
                              ),
                              Text(
                                "04/26",
                                textAlign: TextAlign.right,
                                style: Gadget.releway_sb.copyWith(
                                  color: const Color(0xff858585),
                                  fontSize: 15.sp,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 22.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: Gadget.releway_r.copyWith(
                          color: Colors.black,
                          fontSize: 17.sp,
                        ),
                      ),
                      Text(
                        "\$ 589",
                        textAlign: TextAlign.right,
                        style: Gadget.releway_b.copyWith(
                          color: Gadget.primary,
                          fontSize: 22.sp,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                ],
              ),
            ),
            CustomeButton(
              text: "Pay now",
              textColor: Colors.white,
              containerColor: Gadget.primary,
              click: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      );
}
