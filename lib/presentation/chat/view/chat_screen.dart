import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/common/widgets/custom_text_field.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/chat/view/widgets/left_msg_bubble.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/chat/view/widgets/right_msg_bubble.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController? get emailController => null;

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

                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        IconManager.arrowLeft,
                        height: 32.h,
                        width: 32.w,
                      ),
                    ),

                    SizedBox(width: 10.w),

                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(IconManager.plxLogo),
                        ),

                        SizedBox(width: 10.w),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PLX",
                              style: getBold700Style16(
                                fontSize: 16.sp,
                                color: ColorManager.textPrimaryBlack,
                              ),
                            ),

                            SizedBox(height: 5.h),

                            Text(
                              "Fashion Expertise",
                              style: getRegular400Style12(
                                fontSize: 12.sp,
                                color: ColorManager.textSecondaryThree,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "08:00 am",
                    style: getRegular400Style12(
                      fontSize: 12.sp,
                      color: ColorManager.textSecondaryTwo,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),

                Leftmsgbubble(message: 'Hello, Anita', isTop: false),
                SizedBox(height: 3.h),
                Leftmsgbubble(
                  message: 'Ask me anything about PLX!',
                  isTop: true,
                ),
                SizedBox(height: 3.h),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "08:01 am",
                    style: getRegular400Style12(
                      fontSize: 12.sp,
                      color: ColorManager.textSecondaryTwo,
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Rightmsgbubble(
                  message: 'You sit too long. Try drinking lots of water',
                ),

                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "08:50 am",
                    style: getRegular400Style12(
                      fontSize: 12.sp,
                      color: ColorManager.textSecondaryTwo,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),

                Leftmsgbubble(message: 'Oh like that.', isTop: false),
                SizedBox(height: 3.h),
                Leftmsgbubble(message: 'Thanks a lot doc 😍', isTop: true),
                SizedBox(height: 3.h),

                SizedBox(height: 3.h),
                Leftmsgbubble(
                  message: ' ok doc. I will drink lots of water and exercise.',
                  isTop: true,
                ),

                SizedBox(height: 300.h),

                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        prefixIcon: Image.asset(IconManager.emoji),
                        hint: "Type message",
                        style: customTextStyle(
                          fontFamily: FontConstants.fontFamilyInter,
                          fontWeight: FontWeightManager.regural400,
                          fontSize: 16.sp,
                          color: AppColors.textFieldtextColor,
                        ),
                        controller: emailController,
                        fillcolor: ColorManager.chatBoxbgColor,
                      ),
                    ),

                    SizedBox(width: 10.w),

                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        IconManager.attach,
                        height: 24.h,
                        width: 24.h,
                      ),
                    ),

                    SizedBox(width: 7.w),

                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        IconManager.chatCamera,
                        height: 24.h,
                        width: 24.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
