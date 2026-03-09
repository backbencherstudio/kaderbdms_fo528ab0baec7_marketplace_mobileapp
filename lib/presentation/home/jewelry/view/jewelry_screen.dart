import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/category_selector.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/product_card.dart';

class JewelryScreen extends StatefulWidget {
  const JewelryScreen({super.key});

  @override
  State<JewelryScreen> createState() => _JewelryScreenState();
}

class _JewelryScreenState extends State<JewelryScreen> {
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

                CommonHeader(title: "Jewelry"),
                SizedBox(height: 10.h),

                CategorySelector(
                  categories: ["All", "Neckless", "Ring", "Earring", "Bangle"],
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
                        imagePath: ImageManager.ring,
                        title: 'Exclusive Ring set',
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
                        imagePath: ImageManager.ring2,
                        title: 'Simple Earing',
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
                        imagePath: ImageManager.ring3,
                        title: 'Exclusive Ring set',
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
                        imagePath: ImageManager.earing,
                        title: 'Exclusive Pendant',
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
                        imagePath: ImageManager.earing2,
                        title: 'Exclusive Earing',
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
                        imagePath: ImageManager.nose,
                        title: 'Engagement Ring',
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
