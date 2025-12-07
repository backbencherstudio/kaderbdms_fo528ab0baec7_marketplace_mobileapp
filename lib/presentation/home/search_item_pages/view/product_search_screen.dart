import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_name.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_search_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/product_card.dart';

class ProductSearchScreen extends StatefulWidget {
  const ProductSearchScreen({super.key});

  @override
  State<ProductSearchScreen> createState() => _ProductSearchScreenState();
}

class _ProductSearchScreenState extends State<ProductSearchScreen> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20.h),

              CommonsearchHeader(
                hint: "Shirt",
                onSearchTap: () {
                  Navigator.pushNamed(context, RouteName.menShirtScreenRoute);
                },
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
            ],
          ),
        ),
      ),
    );
  }
}
