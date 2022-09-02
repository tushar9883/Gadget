import 'package:find_gadget/screen/add_basket/add_basket.dart';
import 'package:find_gadget/screen/home/pages/profile.dart';
import 'package:find_gadget/screen/home/pages/widget/custome_drawer.dart';
import 'package:find_gadget/screen/search/search.dart';
import 'package:find_gadget/unit/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import 'basket.dart';
import 'favorite.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController tabController;
  bool isOpened = false;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    search.clear();
    super.initState();
  }

  toggleMenu([bool end = false]) {
    if (end) {
      final _state = _endSideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    } else {
      final _state = _sideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    }
  }

  final search = TextEditingController();

  List image = [
    "assets/images/data.jpg",
    "assets/images/magic.jpg",
  ];
  List name = [
    "Apple Watch",
    "Apple Watch",
  ];
  List detail = [
    "Series 6 . Red",
    "Series 7 . Blue",
  ];
  List price = [
    "359",
    "100",
  ];
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: _sideMenuKey,
      background: const Color(0xff5956E9),
      menu: buildMenu(),
      type: SideMenuType.slideNRotate,
      onChange: (_isOpened) {
        setState(() => isOpened = _isOpened);
      },
      child: IgnorePointer(
        ignoring: isOpened,
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 54.w),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        toggleMenu();
                      },
                      child: Image.asset(
                        "assets/images/menu.png",
                        width: 22.w,
                        height: 15.h,
                      ),
                    ),
                    SizedBox(
                      width: 27.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Search(),
                          ),
                        );
                      },
                      child: Container(
                        width: 267.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          border: Border.all(
                            color: const Color(0xffc8c8c8),
                            width: 2.w,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 11.h,
                            bottom: 11.h,
                            left: 11.w,
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.search,
                                color: Color(0xff200E32),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Search",
                                style: Gadget.releway_sb.copyWith(
                                  color: const Color(0xff858585),
                                  fontSize: 17.sp,
                                ),
                              )
                            ],
                          ),
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
              Expanded(
                child: Container(
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
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 60.h,
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: name.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: EdgeInsets.only(
                                          left: 20.w,
                                          right: 20.w,
                                        ),
                                        height: 318.h,
                                        width: 220.w,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => AddBasket(
                                                  name: name[index],
                                                  price: price[index],
                                                  image: image[index],
                                                ),
                                              ),
                                            );
                                          },
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      top: 50.h),
                                                  height: 270.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      20.r,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: const Color(
                                                          0x19393939,
                                                        ),
                                                        blurRadius: 60.r,
                                                        offset:
                                                            const Offset(0, 30),
                                                      ),
                                                    ],
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Column(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        120.r,
                                                      ),
                                                      child: Container(
                                                        height: 150.h,
                                                        width: 150.h,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.blue,
                                                        ),
                                                        child: Image.asset(
                                                          image[index],
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 30.h,
                                                    ),
                                                    Text(
                                                      name[index],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: Gadget.releway_sb
                                                          .copyWith(
                                                        color: Colors.black,
                                                        fontSize: 22.sp,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 9.h,
                                                    ),
                                                    Text(
                                                      detail[index],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: Gadget.releway_sb
                                                          .copyWith(
                                                        color: Gadget.khakhi,
                                                        fontSize: 16.sp,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 13.h,
                                                    ),
                                                    Text(
                                                      "\$ ${price[index]}",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: Gadget.releway_b
                                                          .copyWith(
                                                        color: Gadget.primary,
                                                        fontSize: 17.sp,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 30.h,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 28.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "see more",
                                          style: Gadget.releway_b.copyWith(
                                            color: Gadget.primary,
                                            fontSize: 15.sp,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_outlined,
                                        color: Gadget.primary,
                                        size: 16.h,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 60.h,
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: name.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: EdgeInsets.only(
                                          left: 20.w,
                                          right: 20.w,
                                        ),
                                        height: 318.h,
                                        width: 220.w,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => AddBasket(
                                                  name: name[index],
                                                  price: price[index],
                                                  image: image[index],
                                                ),
                                              ),
                                            );
                                          },
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      top: 50.h),
                                                  height: 270.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      20.r,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: const Color(
                                                          0x19393939,
                                                        ),
                                                        blurRadius: 60.r,
                                                        offset:
                                                            const Offset(0, 30),
                                                      ),
                                                    ],
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Column(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        120.r,
                                                      ),
                                                      child: Container(
                                                        height: 150.h,
                                                        width: 150.h,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.blue,
                                                        ),
                                                        child: Image.asset(
                                                          image[index],
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 30.h,
                                                    ),
                                                    Text(
                                                      name[index],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: Gadget.releway_sb
                                                          .copyWith(
                                                        color: Colors.black,
                                                        fontSize: 22.sp,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 9.h,
                                                    ),
                                                    Text(
                                                      detail[index],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: Gadget.releway_sb
                                                          .copyWith(
                                                        color: Gadget.khakhi,
                                                        fontSize: 16.sp,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 13.h,
                                                    ),
                                                    Text(
                                                      "\$ ${price[index]}",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: Gadget.releway_b
                                                          .copyWith(
                                                        color: Gadget.primary,
                                                        fontSize: 17.sp,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 30.h,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 28.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "see more",
                                          style: Gadget.releway_b.copyWith(
                                            color: Gadget.primary,
                                            fontSize: 15.sp,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_outlined,
                                        color: Gadget.primary,
                                        size: 16.h,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 60.h,
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: name.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: EdgeInsets.only(
                                          left: 20.w,
                                          right: 20.w,
                                        ),
                                        height: 318.h,
                                        width: 220.w,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => AddBasket(
                                                  name: name[index],
                                                  price: price[index],
                                                  image: image[index],
                                                ),
                                              ),
                                            );
                                          },
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      top: 50.h),
                                                  height: 270.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      20.r,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: const Color(
                                                          0x19393939,
                                                        ),
                                                        blurRadius: 60.r,
                                                        offset:
                                                            const Offset(0, 30),
                                                      ),
                                                    ],
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Column(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        120.r,
                                                      ),
                                                      child: Container(
                                                        height: 150.h,
                                                        width: 150.h,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.blue,
                                                        ),
                                                        child: Image.asset(
                                                          image[index],
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 30.h,
                                                    ),
                                                    Text(
                                                      name[index],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: Gadget.releway_sb
                                                          .copyWith(
                                                        color: Colors.black,
                                                        fontSize: 22.sp,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 9.h,
                                                    ),
                                                    Text(
                                                      detail[index],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: Gadget.releway_sb
                                                          .copyWith(
                                                        color: Gadget.khakhi,
                                                        fontSize: 16.sp,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 13.h,
                                                    ),
                                                    Text(
                                                      "\$ ${price[index]}",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: Gadget.releway_b
                                                          .copyWith(
                                                        color: Gadget.primary,
                                                        fontSize: 17.sp,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 30.h,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 28.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "see more",
                                          style: Gadget.releway_b.copyWith(
                                            color: Gadget.primary,
                                            fontSize: 15.sp,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_outlined,
                                        color: Gadget.primary,
                                        size: 16.h,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 60.h,
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: name.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: EdgeInsets.only(
                                          left: 20.w,
                                          right: 20.w,
                                        ),
                                        height: 318.h,
                                        width: 220.w,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => AddBasket(
                                                  name: name[index],
                                                  price: price[index],
                                                  image: image[index],
                                                ),
                                              ),
                                            );
                                          },
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      top: 50.h),
                                                  height: 270.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      20.r,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: const Color(
                                                          0x19393939,
                                                        ),
                                                        blurRadius: 60.r,
                                                        offset:
                                                            const Offset(0, 30),
                                                      ),
                                                    ],
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Column(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        120.r,
                                                      ),
                                                      child: Container(
                                                        height: 150.h,
                                                        width: 150.h,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.blue,
                                                        ),
                                                        child: Image.asset(
                                                          image[index],
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 30.h,
                                                    ),
                                                    Text(
                                                      name[index],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: Gadget.releway_sb
                                                          .copyWith(
                                                        color: Colors.black,
                                                        fontSize: 22.sp,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 9.h,
                                                    ),
                                                    Text(
                                                      detail[index],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: Gadget.releway_sb
                                                          .copyWith(
                                                        color: Gadget.khakhi,
                                                        fontSize: 16.sp,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 13.h,
                                                    ),
                                                    Text(
                                                      "\$ ${price[index]}",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: Gadget.releway_b
                                                          .copyWith(
                                                        color: Gadget.primary,
                                                        fontSize: 17.sp,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 30.h,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Container(
                                  color: const Color(0xffF2F5F1),
                                  padding: EdgeInsets.only(right: 28.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "see more",
                                          style: Gadget.releway_b.copyWith(
                                            color: Gadget.primary,
                                            fontSize: 15.sp,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_outlined,
                                        color: Gadget.primary,
                                        size: 16.h,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.h,
          ),
          CustomeDrawer(
            image: 'assets/images/profile.png',
            name: 'Profile',
            click: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profile(),
                ),
              );
            },
          ),
          CustomeDrawer(
            image: 'assets/images/buy.png',
            name: 'My orders',
            click: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Basket(),
                ),
              );
            },
          ),
          CustomeDrawer(
            image: 'assets/images/heart.png',
            name: 'Favorites',
            click: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Favorite(),
                ),
              );
            },
          ),
          CustomeDrawer(
            image: 'assets/images/bag.png',
            name: 'Delivery',
            click: () {},
          ),
          CustomeDrawer(
            image: 'assets/images/setting.png',
            name: 'Settings',
            click: () {},
          ),
          SizedBox(
            height: 160.h,
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 42.w,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/logout.png',
                    height: 24.h,
                    width: 24.w,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  Text(
                    'Sign out',
                    style: Gadget.releway_sb.copyWith(
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
