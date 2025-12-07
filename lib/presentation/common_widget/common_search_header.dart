import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/custom_search_bar.dart';

class CommonsearchHeader extends StatelessWidget {
  CommonsearchHeader({super.key, this.onTap, this.hint, this.onSearchTap});

  final VoidCallback? onTap;
  final VoidCallback? onSearchTap;
  final String? hint;

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap ?? () => Navigator.pop(context),
          child: Image.asset(IconManager.arrowLeft, height: 32.h, width: 32.w),
        ),

        SizedBox(width: 10.w),

        Expanded(
          child: CustomSearchBar(
            controller: searchController,
            hint: hint,
            onSearchTap: onSearchTap,
          ),
        ),
      ],
    );
  }
}
