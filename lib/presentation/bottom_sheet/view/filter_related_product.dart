import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/product_card.dart';

void showRelatedProductsBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25.r)),
    ),
    builder: (context) {
      return DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.85,
        maxChildSize: 1,
        minChildSize: 0.70,
        builder: (context, scrollController) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 20,
              right: 20,
              top: 20,
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
                      offset: Offset(0, -10),
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(Icons.close, size: 24),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Text(
                      "10 Related Product",
                      style: getSemiBold600Style24(
                        fontSize: 24.sp,
                        color: ColorManager.textPrimaryBlack,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10.h),

                Expanded(
                  child: GridView.builder(
                    controller: scrollController,
                    padding: EdgeInsets.only(top: 5.h),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15.h,
                      crossAxisSpacing: 15.w,
                      childAspectRatio: 0.65,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        imagePath: index.isEven
                            ? ImageManager.productShirt01
                            : ImageManager.productShirt02,
                        title: 'Smart Men Shirt',
                        description: 'A yellow shirt with a bicycle logo on it',
                        price: '€321.99',
                        rating: '4.9',
                        onCartTap: () {},
                        isLiked: false,
                        onLikeTap: () {},
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
