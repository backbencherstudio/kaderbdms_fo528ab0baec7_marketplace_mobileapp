import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/bottom_sheet/view/filter_bottom_sheet.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/product_card.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/home/search_item_pages/view/product_search_screen.dart';

class MenShirtScreen extends ConsumerStatefulWidget {
  const MenShirtScreen({super.key});

  @override
  ConsumerState<MenShirtScreen> createState() => _MenShirtScreenState();
}

class _MenShirtScreenState extends ConsumerState<MenShirtScreen> {
  void openFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => FilterBottomSheet(),
    );
  }

  final List<ProductCard> products = [
    ProductCard(
      productId: 1,
      imagePath: ImageManager.productShirt01,
      title: 'Smart Men Shirt',
      description: 'A yellow shirt with a bicycle logo on it',
      price: '€321.99',
      rating: '4.9',
      isLiked: false,
    ),
    ProductCard(
      productId: 2,
      imagePath: ImageManager.productShirt02,
      title: 'Smart Men Shirt',
      description: 'A yellow shirt with a bicycle logo on it',
      price: '€321.99',
      rating: '4.9',
      isLiked: false,
    ),
    ProductCard(
      productId: 3,
      imagePath: ImageManager.productShirt01,
      title: 'Smart Men Shirt',
      description: 'A yellow shirt with a bicycle logo on it',
      price: '€321.99',
      rating: '4.9',
      isLiked: false,
    ),
    ProductCard(
      productId: 4,
      imagePath: ImageManager.productShirt02,
      title: 'Smart Men Shirt',
      description: 'A yellow shirt with a bicycle logo on it',
      price: '€321.99',
      rating: '4.9',
      isLiked: false,
    ),
    ProductCard(
      productId: 5,
      imagePath: ImageManager.productShirt01,
      title: 'Smart Men Shirt',
      description: 'A yellow shirt with a bicycle logo on it',
      price: '€321.99',
      rating: '4.9',
      isLiked: false,
    ),
    ProductCard(
      productId: 6,
      imagePath: ImageManager.productShirt02,
      title: 'Smart Men Shirt',
      description: 'A yellow shirt with a bicycle logo on it',
      price: '€321.99',
      rating: '4.9',
      isLiked: false,
    ),
  ];

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

                const CommonHeader(title: "Shirt men"),

                SizedBox(height: 20.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${products.length} Results",
                      style: getMedium500Style16(
                        fontSize: 16.sp,
                        color: ColorManager.textPrimaryBlack,
                      ),
                    ),
                    GestureDetector(
                      onTap: openFilterBottomSheet,
                      child: Text(
                        "Sort by Relevance",
                        style: getRegular400Style14(
                          fontSize: 14.sp,
                          color: ColorManager.textSecondaryThree,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.h),

                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 15.h,
                    childAspectRatio: 0.62,
                  ),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    final isLiked = ref.watch(
                      isLikedProvider(product.productId ?? index + 1),
                    );

                    return ProductCard(
                      imagePath: product.imagePath,
                      title: product.title,
                      description: product.description,
                      price: product.price,
                      rating: product.rating,
                      isLiked: isLiked,
                      onCartTap: () {},
                      onLikeTap: () {
                        ref
                                .read(
                                  isLikedProvider(
                                    product.productId ?? index + 1,
                                  ).notifier,
                                )
                                .state =
                            !isLiked;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
