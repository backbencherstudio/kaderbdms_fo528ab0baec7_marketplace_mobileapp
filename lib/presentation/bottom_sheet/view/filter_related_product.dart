import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/product_card.dart';

final likedProductsProvider =
    StateNotifierProvider<LikedProductsNotifier, Set<int>>(
      (ref) => LikedProductsNotifier(),
    );

class LikedProductsNotifier extends StateNotifier<Set<int>> {
  LikedProductsNotifier() : super({});

  void toggleLike(int index) {
    if (state.contains(index)) {
      state = {...state}..remove(index);
    } else {
      state = {...state, index};
    }
  }
}

void showRelatedProductsBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25.r)),
    ),
    builder: (_) => const _RelatedProductsSheet(),
  );
}

class _RelatedProductsSheet extends ConsumerWidget {
  const _RelatedProductsSheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final likedProducts = ref.watch(likedProductsProvider);

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.85,
      minChildSize: 0.7,
      maxChildSize: 1,
      builder: (context, scrollController) {
        return Padding(
          padding: EdgeInsets.fromLTRB(
            20,
            20,
            20,
            MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        width: 50.w,
                        height: 5.h,
                        margin: EdgeInsets.only(bottom: 20.h),
                        decoration: BoxDecoration(
                          color: ColorManager.categoryTextColor,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -10),
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.close, size: 24),
                    ),
                  ),
                ],
              ),

              Text(
                "10 Related Product",
                style: getSemiBold600Style24(
                  fontSize: 24.sp,
                  color: ColorManager.textPrimaryBlack,
                ),
              ),

              SizedBox(height: 10.h),

              Expanded(
                child: GridView.builder(
                  controller: scrollController,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.h,
                    crossAxisSpacing: 15.w,
                    childAspectRatio: 0.65,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    final isLiked = likedProducts.contains(index);

                    return ProductCard(
                      imagePath: index.isEven
                          ? ImageManager.productShirt01
                          : ImageManager.productShirt02,
                      title: 'Smart Men Shirt',
                      description: 'A yellow shirt with a bicycle logo on it',
                      price: '€321.99',
                      rating: '4.9',
                      isLiked: isLiked,
                      onCartTap: () {},
                      onLikeTap: () {
                        ref
                            .read(likedProductsProvider.notifier)
                            .toggleLike(index);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
