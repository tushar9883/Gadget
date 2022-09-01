import 'package:find_gadget/screen/checkout/checkout.dart';
import 'package:find_gadget/unit/theme.dart';
import 'package:find_gadget/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Basket extends StatefulWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  int itemCount = 1;
  List image = [
    "assets/images/ipad.png",
  ];
  List name = [
    "2020 Apple iPad Air 10.9",
  ];
  List price = [
    "589",
  ];

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
            SizedBox(
              height: 100.h,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: name.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 50.w,
                    ),
                    child: Column(
                      children: [
                        Container(
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
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 15.w,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 14.h,
                                    ),
                                    Image.asset(
                                      '${image[index]}',
                                      width: 80.w,
                                      height: 105.h,
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 9.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${name[index]}",
                                      style: Gadget.releway_sb.copyWith(
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      "\$" + "${price[index]}",
                                      textAlign: TextAlign.center,
                                      style: Gadget.releway_sb.copyWith(
                                        color: Gadget.primary,
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Quantity",
                                          style: Gadget.releway_r.copyWith(
                                            color: Colors.black,
                                            fontSize: 13.sp,
                                            letterSpacing: 0.52,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              itemCount--;
                                              itemCount =
                                                  itemCount > 1 ? itemCount : 1;
                                            });
                                          },
                                          child: Image.asset(
                                            'assets/images/minus.png',
                                            height: 20.w,
                                            width: 20.w,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6.w,
                                        ),
                                        Text(
                                          "$itemCount",
                                          textAlign: TextAlign.center,
                                          style: Gadget.releway_sb.copyWith(
                                            color: Colors.black,
                                            fontSize: 13.sp,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6.w,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              itemCount++;
                                            });
                                          },
                                          child: Image.asset(
                                            'assets/images/plus.png',
                                            height: 20.w,
                                            width: 20.w,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(
            //     horizontal: 50.w,
            //   ),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10.r),
            //       boxShadow: [
            //         BoxShadow(
            //           color: const Color(0x07000000),
            //           blurRadius: 40.r,
            //           offset: const Offset(0, 10),
            //         ),
            //       ],
            //       color: Colors.white,
            //     ),
            //     child: Row(
            //       children: [
            //         Padding(
            //           padding: EdgeInsets.only(
            //             left: 15.w,
            //           ),
            //           child: Column(
            //             children: [
            //               SizedBox(
            //                 height: 14.h,
            //               ),
            //               Image.asset(
            //                 'assets/images/ipad.png',
            //                 width: 80.w,
            //                 height: 105.h,
            //               ),
            //               SizedBox(
            //                 height: 12.h,
            //               ),
            //             ],
            //           ),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left: 9.w),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text(
            //                 "2020 Apple iPad Air 10.9",
            //                 style: Gadget.releway_sb.copyWith(
            //                   color: Colors.black,
            //                   fontSize: 16.sp,
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: 10.h,
            //               ),
            //               Text(
            //                 "\$579.00",
            //                 textAlign: TextAlign.center,
            //                 style: Gadget.releway_sb.copyWith(
            //                   color: Gadget.primary,
            //                   fontSize: 15.sp,
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: 10.h,
            //               ),
            //               Row(
            //                 children: [
            //                   Text(
            //                     "Quantity",
            //                     style: Gadget.releway_r.copyWith(
            //                       color: Colors.black,
            //                       fontSize: 13.sp,
            //                       letterSpacing: 0.52,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     width: 12.w,
            //                   ),
            //                   InkWell(
            //                     onTap: () {
            //                       setState(() {
            //                         itemCount--;
            //                         itemCount = itemCount > 1 ? itemCount : 1;
            //                       });
            //                     },
            //                     child: Image.asset(
            //                       'assets/images/minus.png',
            //                       height: 20.w,
            //                       width: 20.w,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     width: 6.w,
            //                   ),
            //                   Text(
            //                     "$itemCount",
            //                     textAlign: TextAlign.center,
            //                     style: Gadget.releway_sb.copyWith(
            //                       color: Colors.black,
            //                       fontSize: 13.sp,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     width: 6.w,
            //                   ),
            //                   InkWell(
            //                     onTap: () {
            //                       setState(() {
            //                         itemCount++;
            //                       });
            //                     },
            //                     child: Image.asset(
            //                       'assets/images/plus.png',
            //                       height: 20.w,
            //                       width: 20.w,
            //                     ),
            //                   ),
            //                 ],
            //               )
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
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
                        click: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CheckOut(
                                itemvalue: itemCount,
                              ),
                            ),
                          );
                        },
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
