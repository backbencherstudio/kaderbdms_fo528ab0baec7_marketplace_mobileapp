import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/notification/view/widgets/notification_alart.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({super.key});

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool push = true;
  bool sound = true;
  bool vibrate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20.h),

              const CommonHeader(title: "Notifications"),

              SizedBox(height: 30.h),

              SettingBox(
                title: "Push Notifications",
                value: push,
                onChanged: (v) => setState(() => push = v),
              ),

              SizedBox(height: 15.h),

              SettingBox(
                title: "Sound",
                value: sound,
                onChanged: (v) => setState(() => sound = v),
              ),

              SizedBox(height: 15.h),

              SettingBox(
                title: "Vibrate",
                value: vibrate,
                onChanged: (v) => setState(() => vibrate = v),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
