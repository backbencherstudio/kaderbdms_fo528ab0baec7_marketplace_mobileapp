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

  final List<Map<String, dynamic>> products = [
    {
      "productId": 1,
      "imagePath": ImageManager.womenDress,
      "title": "Women dress",
      "description": "AMD Ryzen 5 3400G Processor with",
    },
    {
      "productId": 2,
      "imagePath": ImageManager.productShirt01,
      "title": "Men shirt",
      "description": "AMD Ryzen 5 3400G Processor with",
    },
    {
      "productId": 3,
      "imagePath": ImageManager.jeans,
      "title": "Men pant",
      "description": "AMD Ryzen 5 3400G Processor with",
    },
    {
      "productId": 4,
      "imagePath": ImageManager.shirt3,
      "title": "Men shirt",
      "description": "AMD Ryzen 5 3400G Processor with",
    },
    {
      "productId": 5,
      "imagePath": ImageManager.kidsDress,
      "title": "Kids dress",
      "description": "AMD Ryzen 5 3400G Processor with",
    },
    {
      "productId": 6,
      "imagePath": ImageManager.womenPant,
      "title": "Women pant",
      "description": "AMD Ryzen 5 3400G Processor with",
    },
  ];

  final Set<int> likedProducts = {};

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

                const CommonHeader(title: "Fashion"),
                SizedBox(height: 10.h),

                CategorySelector(
                  categories: const ["All", "Women", "Men", "Kid", "Dress"],
                  selectedIndex: selectedCategory,
                  onSelect: (index) {
                    setState(() {
                      selectedCategory = index;
                    });
                  },
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
                    final int productId = product["productId"];
                    final bool isLiked = likedProducts.contains(productId);

                    return ProductCard(
                      imagePath: product["imagePath"],
                      title: product["title"],
                      description: product["description"],
                      price: "€321.99",
                      rating: "4.9",
                      isLiked: isLiked,
                      onCartTap: () {},
                      onLikeTap: () {
                        setState(() {
                          if (isLiked) {
                            likedProducts.remove(productId);
                          } else {
                            likedProducts.add(productId);
                          }
                        });
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
