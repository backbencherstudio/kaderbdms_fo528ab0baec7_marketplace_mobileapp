import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_name.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_search_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/product_card.dart';

final isLikedProvider = StateProvider.family<bool, int>(
  (ref, productId) => false,
);

class ProductSearchScreen extends ConsumerStatefulWidget {
  const ProductSearchScreen({super.key});

  @override
  ConsumerState<ProductSearchScreen> createState() =>
      _ProductSearchScreenState();
}

class _ProductSearchScreenState extends ConsumerState<ProductSearchScreen> {
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
  ];
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
    );
  }
}
