import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/category_selector.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/product_card.dart';

class FashionScreen extends StatefulWidget {
  const FashionScreen({super.key});

  @override
  State<FashionScreen> createState() => _FashionScreenState();
}

class _FashionScreenState extends State<FashionScreen> {
  int selectedCategory = 0;
  bool isLiked = false;

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

                CommonHeader(title: "Fashion"),
                SizedBox(height: 10.h),

                CategorySelector(
                  categories: ["All", "Women", "Men", "Kid", "Dress"],
                  selectedIndex: selectedCategory,
                  onSelect: (index) {
                    setState(() {
                      selectedCategory = index;
                    });
                  },
                ),

                SizedBox(height: 20.h),

                Row(
                  children: [
                    Expanded(
                      child: ProductCard(
                        imagePath: ImageManager.womenDress,
                        title: 'Women dress',
                        description: 'AMD Ryzen 5 3400G Processor with',
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
                        title: 'Men shirt',
                        description: 'AMD Ryzen 5 3400G Processor with ',
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

                SizedBox(height: 10.h),

                Row(
                  children: [
                    Expanded(
                      child: ProductCard(
                        imagePath: ImageManager.jeans,
                        title: 'Men pant',
                        description: 'AMD Ryzen 5 3400G Processor with ',
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
                        imagePath: ImageManager.shirt3,
                        title: 'Men shirt',
                        description: 'AMD Ryzen 5 3400G Processor with',
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

                SizedBox(height: 10.h),

                Row(
                  children: [
                    Expanded(
                      child: ProductCard(
                        imagePath: ImageManager.kidsDress,
                        title: 'Kids dress',
                        description: 'AMD Ryzen 5 3400G Processor with ',
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
                        imagePath: ImageManager.womenPant,
                        title: 'Women pant',
                        description: 'AMD Ryzen 5 3400G Processor with ',
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
