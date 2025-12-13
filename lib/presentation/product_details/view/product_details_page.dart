
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_name.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/product_details/view/widgets/clickable_rating.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/product_details/view/widgets/review_card.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/product_details/view/widgets/slider_dot.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  List<String> sizes = ["S", "M", "L", "XL", "XXXL"];
  String selectedSize = "L";
  int selectedIndex = 0;

  final List<String> images = [
    ImageManager.productRed,
    ImageManager.productMerun,
    ImageManager.productDeepRed,
    ImageManager.productBlack,
    ImageManager.productGray,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Image.asset(
                        IconManager.arrowLeft,
                        height: 32.h,
                        width: 32.w,
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            IconManager.share,
                            height: 32.h,
                            width: 32.w,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            IconManager.cartCount,
                            height: 35.h,
                            width: 35.w,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 20.h),

                Container(
                  height: 350.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.grey.shade200,
                    image: DecorationImage(
                      image: AssetImage(ImageManager.productShirt),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.r),
                        child: Image.asset(
                          ImageManager.productShirt,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 15.h,
                        right: 15.w,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15.h,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            dot(true),
                            SizedBox(width: 8),
                            dot(false),
                            SizedBox(width: 8),
                            dot(false),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20.h),

                Text(
                  "705 Special Badge Premium Shirt For Men 2023",
                  style: getSemiBold600Style24(
                    fontSize: 24.sp,
                    color: ColorManager.textPrimaryBlack,
                  ),
                ),

                SizedBox(height: 15.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const ClickableStarRating(),
                        SizedBox(width: 6.w),
                        Text(
                          "4.9",
                          style: getSemiBold600Style14(
                            fontSize: 14.sp,
                            color: ColorManager.textPrimaryBlack,
                          ),
                        ),

                        SizedBox(width: 5.w),

                        Text(
                          "(1243 Reviews)",
                          style: getRegular400Style14(
                            fontSize: 14.sp,
                            color: ColorManager.textbackgroundColor,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "254 vendus",
                      style: getRegular400Style14(
                        fontSize: 14.sp,
                        color: ColorManager.textbackgroundColor,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15.h),

                Row(
                  children: [
                    Text(
                      "€321,99",
                      style: getSemiBold600Style24(
                        fontSize: 24.sp,
                        color: ColorManager.textPrimaryBlack,
                      ),
                    ),

                    SizedBox(width: 7.w),

                    Text.rich(
                      TextSpan(
                        text: "€361,99",
                        style: getRegular400Style14(
                          fontSize: 14.sp,
                          color: ColorManager.textbackgroundColor,
                        ).copyWith(decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.h),

                Text(
                  "Color",
                  style: getMedium500Style18(
                    fontSize: 18.sp,
                    color: ColorManager.textPrimaryBlack,
                  ),
                ),

                SizedBox(height: 15.h),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(images.length, (index) {
                      bool isSelected = index == selectedIndex;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: isSelected
                                  ? ColorManager.primaryColor
                                  : ColorManager.textBackgroundColor,
                              width: isSelected ? 2.5 : 1,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 28,
                            backgroundColor: isSelected
                                ? Colors.white
                                : Colors.grey.shade100,
                            backgroundImage: AssetImage(images[index]),
                          ),
                        ),
                      );
                    }),
                  ),
                ),

                SizedBox(height: 20.h),

                Text(
                  "Taille",
                  style: getMedium500Style18(
                    fontSize: 18.sp,
                    color: ColorManager.textPrimaryBlack,
                  ),
                ),

                SizedBox(height: 20.h),

                Wrap(
                  spacing: 10,
                  children: sizes.map((size) {
                    bool isSelected = selectedSize == size;

                    return ChoiceChip(
                      selected: isSelected,
                      backgroundColor: ColorManager.backgroundColor,
                      selectedColor: ColorManager.primaryColor,
                      onSelected: (val) {
                        setState(() => selectedSize = size);
                      },

                      label: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          if (isSelected) ...[
                            SizedBox(width: 5.w),
                            Icon(Icons.check, color: Colors.white, size: 18.sp),
                          ],

                          SizedBox(width: 5.w),

                          Text(
                            size,
                            style: getMedium500Style14(
                              color: isSelected
                                  ? Colors.white
                                  : ColorManager.textPrimaryBlack,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),

                SizedBox(height: 20.h),

                Text(
                  "Discription",
                  style: getMedium500Style18(
                    fontSize: 18.sp,
                    color: ColorManager.textPrimaryBlack,
                  ),
                ),

                SizedBox(height: 10.h),

                Text(
                  "Big picture start procrastinating 2 hours get to \ndo work while procrastinating open book \npretend to read while manager stands and \nwatches silently...",
                  style: getRegular400Style16(
                    fontSize: 16.sp,
                    color: ColorManager.textSecondary,
                  ),
                ),

                SizedBox(height: 25.h),

                Text(
                  "Review (1045)",
                  style: getMedium500Style18(
                    fontSize: 18.sp,
                    color: ColorManager.textPrimaryBlack,
                  ),
                ),

                SizedBox(height: 15.h),

                ReviewCard(
                  userName: 'Nolan Carder',
                  reviewText: 'The color way is unique and I love this shirt. ',
                  time: 'Today',
                  image: ImageManager.reviewer1,
                ),

                SizedBox(height: 10.h),

                ReviewCard(
                  userName: 'Nolan Carder',
                  reviewText: 'The color way is unique and I love this shirt. ',
                  time: 'Today',
                  image: ImageManager.review2,
                ),

                SizedBox(height: 10.h),

                ReviewCard(
                  userName: 'Nolan Carder',
                  reviewText: 'The color way is unique and I love this shirt. ',
                  time: 'Today',
                  image: ImageManager.review3,
                ),

                SizedBox(height: 15.h),

                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "See all review",
                    style: getSemiBold600Style14(
                      fontSize: 14.sp,
                      color: ColorManager.primaryColor,
                    ).copyWith(decoration: TextDecoration.underline),
                  ),
                ),
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(IconManager.message, height: 40.h, width: 40.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              RouteName.cartScreenRoute,
                            );
                          },
                          child: Container(
                            height: 45.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                color: ColorManager.primaryColor,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Add to Cart",
                                style: getSemiBold600Style14(
                                  fontSize: 14.sp,
                                  color: ColorManager.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 4.w),

                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              RouteName.orderAddressScreenRoute,
                            );
                          },
                          child: Container(
                            height: 45.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: ColorManager.primaryColor,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Center(
                              child: Text(
                                "Buy Now",
                                style: getSemiBold600Style14(
                                  fontSize: 14.sp,
                                  color: ColorManager.whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
