import 'package:find_gadget/unit/theme.dart';
import 'package:find_gadget/widgets/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final search = TextEditingController();
  List image = [
    "assets/images/data.jpg",
    "assets/images/magic.jpg",
  ];
  List name = [
    "Apple Watch",
    "Apple Watch",
  ];
  List price = [
    "359",
    "100",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/back.png',
                        height: 24.h,
                        width: 24.h,
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                      Container(
                        width: 267.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          border: Border.all(
                            color: Gadget.primary,
                            width: 2.w,
                          ),
                        ),
                        child: TextField(
                          style: Gadget.releway_sb.copyWith(
                            color: Gadget.khakhi,
                            fontSize: 17.sp,
                          ),
                          controller: search,
                          textInputAction: TextInputAction.search,
                          onSubmitted: (value) {
                            setState(() {});
                            print("search");
                          },
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
                  height: 30.h,
                ),
                search.text == "Apple"
                    ? Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 96.w,
                              ),
                              child: Text(
                                "Found  6 results",
                                textAlign: TextAlign.center,
                                style: Gadget.releway_sb.copyWith(
                                  color: Colors.black,
                                  fontSize: 28.sp,
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: name.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.only(
                                      left: 20.w,
                                      right: 20.w,
                                    ),
                                    height: 318.h,
                                    width: 220.w,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: InkWell(
                                            onTap: () {},
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(top: 50.h),
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
                                                    offset: const Offset(0, 30),
                                                  ),
                                                ],
                                                color: Colors.white,
                                              ),
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
                                                    shape: BoxShape.circle,
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
                                                textAlign: TextAlign.center,
                                                style:
                                                    Gadget.releway_sb.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 22.sp,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 13.h,
                                              ),
                                              Text(
                                                "\$ ${price[index]}",
                                                textAlign: TextAlign.center,
                                                style:
                                                    Gadget.releway_b.copyWith(
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
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      )
                    : search.text.isEmpty
                        ? Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 160.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 42.w),
                                  child: NotFound(
                                    image: 'assets/images/item.png',
                                    height: 146.h,
                                    width: 330.w,
                                    title: "Item not found",
                                    text:
                                        "Try a more generic search term or try \nlooking for alternative products.",
                                  ),
                                ),
                              ],
                            ),
                          )
                        : const SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
