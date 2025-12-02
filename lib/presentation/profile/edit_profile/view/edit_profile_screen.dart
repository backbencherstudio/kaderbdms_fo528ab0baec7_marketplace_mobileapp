import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

// ignore: camel_case_types
class editProfileScreen extends StatefulWidget {
  const editProfileScreen({super.key});

  @override
  State<editProfileScreen> createState() => _editProfileScreenState();
}

class _editProfileScreenState extends State<editProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: ColorManager.textPrimaryBlack),
        centerTitle: false,
        title: Text(
          "Edit Profile",
          style: getSemiBold600Style24(
            fontWeight: FontWeightManager.semiBold600,
            fontSize: 24.sp,
            color: ColorManager.textPrimaryBlack,
          ),
        ),
      ),

      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey.shade300,
                child: Text("JB"),
              ),

              Positioned(
                right: -5,
                top: 30,
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/icons/photo.png",
                    width: 16,
                    height: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
