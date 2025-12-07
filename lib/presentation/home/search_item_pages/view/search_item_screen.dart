import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_search_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/custom_search_bar.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/home/search_item_pages/view/widgets/search_suggestion.dart';

class SearchItemScreen extends StatelessWidget {
  SearchItemScreen({super.key});

  final TextEditingController searchController = TextEditingController();

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

                CommonsearchHeader(),

                SizedBox(height: 20.h),

                SearchSuggestion(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
