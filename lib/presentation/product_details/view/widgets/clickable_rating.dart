import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';

class ClickableStarRating extends StatefulWidget {
  final double initialRating;
  final void Function(double)? onRatingChanged;

  final dynamic width;

  final dynamic height;

  const ClickableStarRating({
    super.key,
    this.initialRating = 0,
    this.onRatingChanged,
    this.height,
    this.width,
  });

  @override
  State<ClickableStarRating> createState() => _ClickableStarRatingState();
}

class _ClickableStarRatingState extends State<ClickableStarRating> {
  double rating = 0;

  @override
  void initState() {
    super.initState();
    rating = widget.initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              rating = index + 1.0;
              widget.onRatingChanged?.call(rating);
            });
          },
          child: Padding(
            padding: EdgeInsets.zero,
            child: Image.asset(
              index < rating ? IconManager.ratingColor : IconManager.starEmpty,
              height: 16.h,
              width: 16.w,
            ),
          ),
        );
      }),
    );
  }
}
