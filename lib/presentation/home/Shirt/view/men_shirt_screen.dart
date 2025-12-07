// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
// import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
// import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
// import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';
// import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/product_card.dart';

// class MenShirtScreen extends StatefulWidget {
//   const MenShirtScreen({super.key});

//   @override
//   State<MenShirtScreen> createState() => _MenShirtScreenState();
// }

// class _MenShirtScreenState extends State<MenShirtScreen> {
//   bool isLiked = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               children: [
//                 SizedBox(height: 20.h),

//                 CommonHeader(title: "Shirt men"),

//                 SizedBox(height: 20.h),

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "21 Results",
//                       style: getMedium500Style16(
//                         fontSize: 16.sp,
//                         color: ColorManager.textPrimaryBlack,
//                       ),
//                     ),

//                     Text(
//                       "Sort by Relevance",
//                       style: getRegular400Style14(
//                         fontSize: 14.sp,
//                         color: ColorManager.textSecondaryThree,
//                       ),
//                     ),
//                   ],
//                 ),

//                 SizedBox(height: 20.h),

//                 Row(
//                   children: [
//                     Expanded(
//                       child: ProductCard(
//                         imagePath: ImageManager.productShirt01,
//                         title: 'Smart Men Shirt',
//                         description: 'A yellow shirt with a bicycle logo on it',
//                         price: '€321.99',
//                         rating: '4.9',
//                         onCartTap: () {},
//                         isLiked: isLiked,
//                         onLikeTap: () {
//                           setState(() {
//                             isLiked = !isLiked;
//                           });
//                         },
//                       ),
//                     ),
//                     SizedBox(width: 10.w),
//                     Expanded(
//                       child: ProductCard(
//                         imagePath: ImageManager.productShirt02,
//                         title: 'Smart Men Shirt',
//                         description: 'A yellow shirt with a bicycle logo on it',
//                         price: '€321.99',
//                         rating: '4.9',
//                         onCartTap: () {},
//                         isLiked: isLiked,
//                         onLikeTap: () {
//                           setState(() {
//                             isLiked = !isLiked;
//                           });
//                         },
//                       ),
//                     ),
//                   ],
//                 ),

//                 SizedBox(height: 15.h),

//                 Row(
//                   children: [
//                     Expanded(
//                       child: ProductCard(
//                         imagePath: ImageManager.productShirt02,
//                         title: 'Smart Men Shirt',
//                         description: 'A yellow shirt with a bicycle logo on it',
//                         price: '€321.99',
//                         rating: '4.9',
//                         onCartTap: () {},
//                         isLiked: isLiked,
//                         onLikeTap: () {
//                           setState(() {
//                             isLiked = !isLiked;
//                           });
//                         },
//                       ),
//                     ),
//                     SizedBox(width: 10.w),
//                     Expanded(
//                       child: ProductCard(
//                         imagePath: ImageManager.productShirt01,
//                         title: 'Smart Men Shirt',
//                         description: 'A yellow shirt with a bicycle logo on it',
//                         price: '€321.99',
//                         rating: '4.9',
//                         onCartTap: () {},
//                         isLiked: isLiked,
//                         onLikeTap: () {
//                           setState(() {
//                             isLiked = !isLiked;
//                           });
//                         },
//                       ),
//                     ),
//                   ],
//                 ),

//                 SizedBox(height: 15.h),

//                 Row(
//                   children: [
//                     Expanded(
//                       child: ProductCard(
//                         imagePath: ImageManager.productShirt01,
//                         title: 'Smart Men Shirt',
//                         description: 'A yellow shirt with a bicycle logo on it',
//                         price: '€321.99',
//                         rating: '4.9',
//                         onCartTap: () {},
//                         isLiked: isLiked,
//                         onLikeTap: () {
//                           setState(() {
//                             isLiked = !isLiked;
//                           });
//                         },
//                       ),
//                     ),
//                     SizedBox(width: 10.w),
//                     Expanded(
//                       child: ProductCard(
//                         imagePath: ImageManager.productShirt02,
//                         title: 'Smart Men Shirt',
//                         description: 'A yellow shirt with a bicycle logo on it',
//                         price: '€321.99',
//                         rating: '4.9',
//                         onCartTap: () {},
//                         isLiked: isLiked,
//                         onLikeTap: () {
//                           setState(() {
//                             isLiked = !isLiked;
//                           });
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/bottom_sheet/view/filter_bottom_sheet.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/product_card.dart';
// ⬅ ADD THIS

class MenShirtScreen extends StatefulWidget {
  const MenShirtScreen({super.key});

  @override
  State<MenShirtScreen> createState() => _MenShirtScreenState();
}

class _MenShirtScreenState extends State<MenShirtScreen> {
  bool isLiked = false;

  void openFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => FilterBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 20.h),

                CommonHeader(title: "Shirt men"),

                SizedBox(height: 20.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "21 Results",
                      style: getMedium500Style16(
                        fontSize: 16.sp,
                        color: ColorManager.textPrimaryBlack,
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          "Sort by Relevance",
                          style: getRegular400Style14(
                            fontSize: 14.sp,
                            color: ColorManager.textSecondaryThree,
                          ),
                        ),
                        SizedBox(width: 10.w),

                        GestureDetector(
                          onTap: openFilterBottomSheet,
                          child: Icon(
                            Icons.filter_list,
                            size: 22.sp,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 20.h),

                Row(
                  children: [
                    Expanded(
                      child: ProductCard(
                        imagePath: ImageManager.productShirt01,
                        title: 'Smart Men Shirt',
                        description: 'A yellow shirt with a bicycle logo on it',
                        price: '€321.99',
                        rating: '4.9',
                        onCartTap: () {},
                        isLiked: isLiked,
                        onLikeTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: ProductCard(
                        imagePath: ImageManager.productShirt02,
                        title: 'Smart Men Shirt',
                        description: 'A yellow shirt with a bicycle logo on it',
                        price: '€321.99',
                        rating: '4.9',
                        onCartTap: () {},
                        isLiked: isLiked,
                        onLikeTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15.h),

                Row(
                  children: [
                    Expanded(
                      child: ProductCard(
                        imagePath: ImageManager.productShirt02,
                        title: 'Smart Men Shirt',
                        description: 'A yellow shirt with a bicycle logo on it',
                        price: '€321.99',
                        rating: '4.9',
                        onCartTap: () {},
                        isLiked: isLiked,
                        onLikeTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: ProductCard(
                        imagePath: ImageManager.productShirt01,
                        title: 'Smart Men Shirt',
                        description: 'A yellow shirt with a bicycle logo on it',
                        price: '€321.99',
                        rating: '4.9',
                        onCartTap: () {},
                        isLiked: isLiked,
                        onLikeTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15.h),

                Row(
                  children: [
                    Expanded(
                      child: ProductCard(
                        imagePath: ImageManager.productShirt01,
                        title: 'Smart Men Shirt',
                        description: 'A yellow shirt with a bicycle logo on it',
                        price: '€321.99',
                        rating: '4.9',
                        onCartTap: () {},
                        isLiked: isLiked,
                        onLikeTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: ProductCard(
                        imagePath: ImageManager.productShirt02,
                        title: 'Smart Men Shirt',
                        description: 'A yellow shirt with a bicycle logo on it',
                        price: '€321.99',
                        rating: '4.9',
                        onCartTap: () {},
                        isLiked: isLiked,
                        onLikeTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
