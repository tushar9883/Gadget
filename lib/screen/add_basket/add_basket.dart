import 'package:find_gadget/screen/home/pages/basket.dart';
import 'package:find_gadget/unit/theme.dart';
import 'package:find_gadget/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddBasket extends StatefulWidget {
  final name;
  final price;
  final image;

  const AddBasket({
    Key? key,
    this.name,
    this.price,
    this.image,
  }) : super(key: key);

  @override
  State<AddBasket> createState() => _AddBasketState();
}

class _AddBasketState extends State<AddBasket> {
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
              padding: EdgeInsets.only(left: 30.w, right: 50.w),
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
                  Image.asset(
                    'assets/images/like.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Image.asset(
                    "${widget.image}",
                    height: 265.h,
                    width: 230.w,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8.r),
                            topLeft: Radius.circular(8.r),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x0f000000),
                              blurRadius: 30.r,
                              offset: const Offset(0, 4),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 38.w,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 26.h,
                                  ),
                                  Text(
                                    "${widget.name}",
                                    style: Gadget.releway_sb.copyWith(
                                      color: Colors.black,
                                      fontSize: 28.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 18.h,
                                  ),
                                  Text(
                                    "Colors",
                                    style: Gadget.releway_b.copyWith(
                                      color: Colors.black,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 104.w,
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          border: Border.all(
                                            color: const Color(0xffe3e3e3),
                                            width: 1.w,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0x0f000000),
                                              blurRadius: 14.r,
                                              offset: const Offset(0, 4),
                                            ),
                                          ],
                                          color: Colors.white,
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 12.w,
                                            ),
                                            Container(
                                              width: 16.w,
                                              height: 16.w,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff7485c1),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6.w,
                                            ),
                                            Text(
                                              "Sky Blue",
                                              style: Gadget.releway_b.copyWith(
                                                color: Colors.black,
                                                fontSize: 12.sp,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6.w,
                                      ),
                                      Container(
                                        width: 104.w,
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          border: Border.all(
                                            color: const Color(0xff858585),
                                            width: 1.w,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0x0f000000),
                                              blurRadius: 14.r,
                                              offset: const Offset(0, 4),
                                            ),
                                          ],
                                          color: Colors.white,
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 12.w,
                                            ),
                                            Container(
                                              width: 16.w,
                                              height: 16.w,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xffc9a19c),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6.w,
                                            ),
                                            Text(
                                              "Rose Gold",
                                              style: Gadget.releway_b.copyWith(
                                                color: Colors.black,
                                                fontSize: 12.sp,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6.w,
                                      ),
                                      Container(
                                        width: 104.w,
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          border: Border.all(
                                            color: const Color(0xffe3e3e3),
                                            width: 1.w,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0x0f000000),
                                              blurRadius: 14.r,
                                              offset: const Offset(0, 4),
                                            ),
                                          ],
                                          color: Colors.white,
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 12.w,
                                            ),
                                            Container(
                                              width: 16.w,
                                              height: 16.w,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xffa1c89b),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6.w,
                                            ),
                                            Text(
                                              "Green",
                                              style: Gadget.releway_b.copyWith(
                                                color: Colors.black,
                                                fontSize: 12.sp,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Text(
                                    "Get Apple TV+ free for a year",
                                    style: Gadget.releway_b.copyWith(
                                      color: Colors.black,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Text(
                                    "Available when you purchase any new iPhone, iPad, iPod Touch, Mac or Apple TV, £4.99/month after free trial.",
                                    style: Gadget.releway_r.copyWith(
                                      color: Colors.black,
                                      fontSize: 15.sp,
                                      letterSpacing: 0.30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Full description",
                                        style: Gadget.releway_b.copyWith(
                                          color: const Color(0xff5956e9),
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Image.asset(
                                        "assets/images/back_forword.png",
                                        height: 16.h,
                                        width: 16.w,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Total",
                                        style: Gadget.releway_r.copyWith(
                                          color: Colors.black,
                                          fontSize: 17.sp,
                                        ),
                                      ),
                                      Text(
                                        "\$" + "${widget.price}",
                                        textAlign: TextAlign.right,
                                        style: Gadget.releway_b.copyWith(
                                          color: Gadget.primary,
                                          fontSize: 22.sp,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 36.h,
                            ),
                            CustomeButton(
                              containerColor: Gadget.primary,
                              textColor: Colors.white,
                              click: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Basket(),
                                  ),
                                );
                              },
                              text: "Add to basket",
                            ),
                            SizedBox(
                              height: 36.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
