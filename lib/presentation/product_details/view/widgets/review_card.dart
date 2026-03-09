import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/product_details/view/widgets/clickable_rating.dart';
// <-- your star widget

class ReviewCard extends StatelessWidget {
  final String userName;
  final String reviewText;
  final String time;
  final String image;

  const ReviewCard({
    super.key,
    required this.userName,
    required this.reviewText,
    required this.time,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(radius: 20.r, backgroundImage: AssetImage(image)),

              SizedBox(width: 12.w),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: getMedium500Style14(
                        fontSize: 14.sp,
                        color: ColorManager.textPrimaryBlack,
                      ),
                    ),

                    SizedBox(height: 4.h),

                    ClickableStarRating(
                      initialRating: 5,
                      onRatingChanged: (value) {},
                    ),

                    SizedBox(height: 10.h),

                    Text(
                      reviewText,
                      style: getMedium500Style14(
                        fontSize: 14.sp,
                        color: ColorManager.textPrimaryBlack,
                      ),
                    ),
                  ],
                ),
              ),

              /// Time
              Text(
                time,
                style: getRegular400Style12(
                  fontSize: 12.sp,
                  color: ColorManager.textSecondaryThree,
                ),
              ),
            ],
          ),

          SizedBox(height: 12.h),

          /// Review Text
        ],
      ),
    );
  }
}
