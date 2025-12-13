import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/bottom_sheet/view/filter_related_product.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/bottom_sheet/view/widgets/primary_border.dart';

final selectedSizeProvider = StateProvider<String>((ref) => "L");
final selectedColorProvider = StateProvider<List<String>>(
  (ref) => ["Gray", "White", "Red"],
);
final priceRangeProvider = StateProvider<RangeValues>(
  (ref) => RangeValues(0, 800000),
);

class FilterBottomSheet extends ConsumerWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSize = ref.watch(selectedSizeProvider);
    final selectedColors = ref.watch(selectedColorProvider);
    final price = ref.watch(priceRangeProvider);

    List<String> sizes = ["S", "M", "L", "XL", "XXXL"];

    List<String> colors = [
      "Gray",
      "White",
      "Red",
      "Violet",
      "Green",
      "Yellow",
      "Blue",
      "Black",
    ];

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 20,
        right: 20,
        top: 25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
                      borderRadius: BorderRadius.circular(20),
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

          SizedBox(height: 10.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Filter",
                style: getSemiBold600Style24(
                  fontSize: 24.sp,
                  color: ColorManager.textPrimaryBlack,
                ),
              ),
            ],
          ),

          SizedBox(height: 15.h),

          Text(
            "Size",
            style: getMedium500Style20(
              fontSize: 20.sp,
              color: ColorManager.textPrimaryBlack,
            ),
          ),
          SizedBox(height: 5.h),

          Wrap(
            spacing: 10,
            children: sizes.map((size) {
              bool isSelected = selectedSize == size;

              return ChoiceChip(
                selected: isSelected,
                backgroundColor: ColorManager.backgroundColor,
                selectedColor: ColorManager.primaryColor,
                onSelected: (val) {
                  ref.read(selectedSizeProvider.notifier).state = size;
                },

                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (isSelected) ...[
                      SizedBox(width: 5.w),
                      Icon(Icons.check, color: Colors.white, size: 18.sp),
                    ],

                    SizedBox(width: 5.w),

                    Text(
                      size,
                      style: getMedium500Style14(
                        color: isSelected
                            ? Colors.white
                            : ColorManager.textPrimaryBlack,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),

          SizedBox(height: 15.h),

          Text(
            "Price",
            style: getMedium500Style20(
              fontSize: 20.sp,
              color: ColorManager.textPrimaryBlack,
            ),
          ),

          SizedBox(height: 10.h),

          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "From  ",
                      style: getRegular400Style16(
                        color: ColorManager.textbackgroundColor,
                        fontSize: 16.sp,
                      ),
                    ),
                    TextSpan(
                      text: "\$${price.start.toInt()}",
                      style: getRegular400Style16(
                        color: ColorManager.primaryColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15.w),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "To  ",
                      style: getRegular400Style16(
                        color: ColorManager.textbackgroundColor,
                        fontSize: 16.sp,
                      ),
                    ),
                    TextSpan(
                      text: "\$${price.end.toInt()}",
                      style: getRegular400Style16(
                        color: ColorManager.primaryColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),

          SizedBox(
            width: double.infinity,
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 8,
                inactiveTrackColor: ColorManager.textBackgroundColor,
                activeTrackColor: ColorManager.primaryColor,
                overlayColor: ColorManager.primaryColor,
                rangeThumbShape: PrimaryBorderThumb(),
                activeTickMarkColor: Colors.transparent,
                inactiveTickMarkColor: Colors.transparent,
              ),
              child: RangeSlider(
                values: price,
                min: 0,
                max: 1000000,
                divisions: 20,
                onChanged: (values) {
                  ref.read(priceRangeProvider.notifier).state = values;
                },
              ),
            ),
          ),

          SizedBox(height: 5.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$0",
                style: getRegular400Style16(
                  color: ColorManager.textbackgroundColor,
                  fontSize: 14.sp,
                ),
              ),
              Text(
                "\$10,000,000",
                style: getRegular400Style16(
                  color: ColorManager.textbackgroundColor,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),

          SizedBox(height: 15.h),

          Text(
            "Color",
            style: getMedium500Style20(
              fontSize: 20.sp,
              color: ColorManager.textPrimaryBlack,
            ),
          ),

          SizedBox(height: 10.h),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: colors.map((color) {
              bool isSelected = selectedColors.contains(color);

              return FilterChip(
                selected: isSelected,
                onSelected: (val) {
                  {
                    if (isSelected) {
                      ref.read(selectedColorProvider.notifier).state =
                          selectedColors.where((c) => c != color).toList();
                    } else {
                      ref.read(selectedColorProvider.notifier).state = [
                        ...selectedColors,
                        color,
                      ];
                    }
                  }
                },
                selectedColor: ColorManager.primaryColor,
                checkmarkColor: Colors.white,
                backgroundColor: Colors.grey.shade200,

                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      color,
                      style: getMedium500Style14(
                        fontSize: 14.sp,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                    SizedBox(width: 10.w),

                    ClipOval(
                      child: Image.asset(
                        _getColorImage(color),
                        width: 15.w,
                        height: 15.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),

          SizedBox(height: 20.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  ref.read(selectedSizeProvider.notifier).state = "L";
                  ref.read(selectedColorProvider.notifier).state = [];
                  ref.read(priceRangeProvider.notifier).state = RangeValues(
                    0,
                    1000000,
                  );
                },
                child: Text(
                  "Clear all filters",
                  style: getSemiBold600Style16(
                    color: ColorManager.textRedColor,
                    fontSize: 16.sp,
                  ).copyWith(decoration: TextDecoration.underline),
                ),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.primaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                ),
                onPressed: () {
                  showRelatedProductsBottomSheet(context);
                },
                child: Text(
                  "Apply Filter",
                  style: getSemiBold600Style14(
                    color: Colors.white,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 15.h),
        ],
      ),
    );
  }

  String _getColorImage(String name) {
    switch (name.toLowerCase()) {
      case "gray":
        return IconManager.gray;
      case "white":
        return IconManager.white;
      case "red":
        return IconManager.red;
      case "violet":
        return IconManager.violet;
      case "green":
        return IconManager.green;
      case "yellow":
        return IconManager.yellow;
      case "blue":
        return IconManager.blue;
      case "black":
        return IconManager.black;
      default:
        return IconManager.gray;
    }
  }
}
