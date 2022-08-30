import 'package:find_gadget/unit/theme.dart';
import 'package:find_gadget/widgets/customer_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    super.initState();
  }

  final search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Gadget.white_lite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 47.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 54.w),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/menu.png",
                      width: 22.w,
                      height: 15.h,
                    ),
                    SizedBox(
                      width: 27.w,
                    ),
                    Container(
                      width: 267.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        border: Border.all(
                          color: const Color(0xffc8c8c8),
                          width: 2.w,
                        ),
                      ),
                      child: TextField(
                        style: Gadget.releway_sb.copyWith(
                          color: Gadget.khakhi,
                          fontSize: 17.sp,
                        ),
                        cursorColor: Gadget.primary,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xff200E32),
                          ),
                          hintText: "Search",
                          hintStyle: Gadget.releway_sb.copyWith(
                            color: Gadget.khakhi,
                            fontSize: 17.sp,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 55.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.w),
                child: Text(
                  "Order online\ncollect in store",
                  style: Gadget.releway_b.copyWith(
                    color: Colors.black,
                    fontSize: 34.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 55.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 2.w),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 34.w),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            TabBar(
                              physics: const NeverScrollableScrollPhysics(),
                              controller: tabController,
                              isScrollable: true,
                              onTap: (_) {
                                setState(() {});
                              },
                              indicatorColor: Gadget.primary,
                              indicatorSize: TabBarIndicatorSize.label,
                              tabs: [
                                Text(
                                  "Wearable",
                                  style: Gadget.releway_sb.copyWith(
                                    color: tabController.index == 0
                                        ? Gadget.primary
                                        : const Color(0xff99999d),
                                    fontSize: 17.sp,
                                  ),
                                ),
                                Text(
                                  "Laptops",
                                  style: Gadget.releway_sb.copyWith(
                                    color: tabController.index == 1
                                        ? Gadget.primary
                                        : const Color(0xff99999d),
                                    fontSize: 17.sp,
                                  ),
                                ),
                                Text(
                                  "Phones",
                                  style: Gadget.releway_sb.copyWith(
                                    color: tabController.index == 2
                                        ? Gadget.primary
                                        : const Color(0xff99999d),
                                    fontSize: 17.sp,
                                  ),
                                ),
                                Text(
                                  "Drones",
                                  style: Gadget.releway_sb.copyWith(
                                    color: tabController.index == 3
                                        ? Gadget.primary
                                        : const Color(0xff99999d),
                                    fontSize: 17.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 60.h,
                                ),
                                Container(
                                  height: 318.h,
                                  width: 220.w,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 270.h,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Color(0x19393939),
                                                blurRadius: 60,
                                                offset: Offset(0, 30),
                                              ),
                                            ],
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(120.r),
                                          child: Container(
                                            height: 150.h,
                                            width: 150.h,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.blue,
                                            ),
                                            child: Image.asset(
                                              'assets/images/data.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: const Text("bhdsjk"),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: const Text("bhdsjk"),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: const Text("bhdsjk"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
