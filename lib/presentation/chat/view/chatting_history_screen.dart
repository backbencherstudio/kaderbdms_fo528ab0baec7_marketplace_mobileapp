import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_name.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/common/widgets/custom_text_field.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/chat/view/widgets/chat_preview_card.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';

class ChattingHistoryScreen extends StatefulWidget {
  const ChattingHistoryScreen({super.key});

  @override
  State<ChattingHistoryScreen> createState() => _ChattingHistoryScreenState();
}

class _ChattingHistoryScreenState extends State<ChattingHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),

                CommonHeader(
                  onTap: () {
                    Navigator.pop(context, RouteName.bottomNavBar);
                  },
                  title: "Chatting history",
                ),

                SizedBox(height: 15.h),

                Container(
                  height: 45.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: ColorManager.textFieldBorder,
                      width: 1,
                    ),
                  ),

                  child: CustomTextField(
                    controller: TextEditingController(),
                    borderRadius: 6.r,
                    prefixIcon: Image.asset(IconManager.searchChat),
                    hint: 'Search in chats',
                    style: getRegular400Style12(
                      fontSize: 12.sp,
                      color: ColorManager.textSecondaryThree,
                    ),
                    borderColor: null,
                  ),
                ),

                SizedBox(height: 20.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Chats",
                      style: getSemiBold600Style20(
                        fontSize: 20.sp,
                        color: ColorManager.textPrimaryBlack,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Clear All",
                        style: getMedium500Style14(
                          fontSize: 14.sp,
                          color: ColorManager.textRedColor,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15.h),

                ChatPreviewCard(
                  onChatTap: () {
                    Navigator.pushNamed(context, RouteName.chatScreenRoute);
                  },
                  name: "Stephen Kim",
                  time: "5 mins ago",
                  message:
                      "Lorem ipsum dolor sit amet consectetur. Dolor purus iaculis lectus phasellus nisl. Elit pharetra scelerisqueadsdds",
                  image: ImageManager.chatPerson1,
                  isSelected: true,
                ),

                ChatPreviewCard(
                  name: "Nicholas Kim",
                  time: "5 mins ago",
                  message:
                      "Lorem ipsum dolor sit amet consectetur. Dolor purus iaculis lectus phasellus nisl. Elit pharetra scelerisqueadsdds",
                  image: ImageManager.chatPerson2,
                  isSelected: false,
                ),

                ChatPreviewCard(
                  name: "Nicholas Kim",
                  time: "5 mins ago",
                  message:
                      "Lorem ipsum dolor sit amet consectetur. Dolor purus iaculis lectus phasellus nisl. Elit pharetra scelerisqueadsdds",
                  image: ImageManager.chatPerson3,
                  isSelected: false,
                ),

                ChatPreviewCard(
                  name: "Nicholas Kim",
                  time: "5 mins ago",
                  message:
                      "Lorem ipsum dolor sit amet consectetur. Dolor purus iaculis lectus phasellus nisl. Elit pharetra scelerisqueadsdds",
                  image: ImageManager.chatPerson4,
                  isSelected: false,
                ),

                ChatPreviewCard(
                  name: "Nicholas Kim",
                  time: "5 mins ago",
                  message:
                      "Lorem ipsum dolor sit amet consectetur. Dolor purus iaculis lectus phasellus nisl. Elit pharetra scelerisqueadsdds",
                  image: ImageManager.chatPerson5,
                  isSelected: false,
                ),

                ChatPreviewCard(
                  name: "Nicholas Kim",
                  time: "5 mins ago",
                  message:
                      "Lorem ipsum dolor sit amet consectetur. Dolor purus iaculis lectus phasellus nisl. Elit pharetra scelerisqueadsdds",
                  image: ImageManager.chatPerson6,
                  isSelected: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
