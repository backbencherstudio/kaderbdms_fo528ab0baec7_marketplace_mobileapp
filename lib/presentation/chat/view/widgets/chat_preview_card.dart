import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class ChatPreviewCard extends StatelessWidget {
  final String name;
  final String time;
  final String message;
  final String image;
  final bool isSelected;
  final VoidCallback? onChatTap;

  const ChatPreviewCard({
    super.key,
    required this.name,
    required this.time,
    required this.message,
    required this.image,
    required this.isSelected,
    this.onChatTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChatTap,
      child: Container(
        height: 100.h,
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected
              ? ColorManager.testbackgroundColor
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isSelected ? ColorManager.primaryColor : Colors.transparent,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 5.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(image),
                    ),
                    Positioned(
                      bottom: -1,
                      right: -1,
                      child: Container(
                        width: 13,
                        height: 13,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: getSemiBold600Style14(
                              fontSize: 14.sp,
                              color: ColorManager.textPrimaryBlack,
                            ),
                          ),
                          Text(
                            time,
                            style: getMedium500Style12(
                              fontSize: 12.sp,
                              color: ColorManager.textSecondaryTwo,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 6),

                      Text(
                        message,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        strutStyle: StrutStyle(height: 1.2),
                        style: getRegular400Style12(
                          fontSize: 12.sp,
                          color: ColorManager.textSecondaryThree,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
