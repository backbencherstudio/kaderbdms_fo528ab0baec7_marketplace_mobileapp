import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_search_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/search_bar.dart';

class SearchItemScreen extends StatelessWidget {
  SearchItemScreen({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Row(
                children: [
                  CommonsearchHeader(),

                  SizedBox(width: 10.w),

                  Expanded(
                    child: CustomSearchBar(
                      controller: searchController,
                      onSearchTap: () {},
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.h),
             
            ],
          ),
        ),
      ),
    );
  }
}
