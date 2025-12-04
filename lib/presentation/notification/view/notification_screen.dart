import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/notification/view/widgets/notification_box.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              CommonHeader(title: "Notification"),
              SizedBox(height: 20.h),
              Text(
                "Today",
                style: getMedium500Style16(
                  fontSize: 16.sp,
                  color: ColorManager.textPrimaryBlack,
                ),
              ),

              SizedBox(height: 20.h),

              NotificationBox(
                title: 'Your Order is Shipped!',
                message:
                    'Your order #[10235] is on its way. Track your package.',
                time: 'Just Now',
                icon: IconManager.closebox,
              ),

              SizedBox(height: 15.h),

              NotificationBox(
                title: 'New Order Received!',
                message:
                    "Cha-ching! You have a new order #[10236] for \$45.00. Please prepare it for fulfillment.",
                time: '2 hours ago',
                icon: IconManager.openbox,
              ),

              SizedBox(height: 20.h),

              Text(
                "Yesterday",
                style: getMedium500Style16(
                  fontSize: 16.sp,
                  color: ColorManager.textPrimaryBlack,
                ),
              ),

              SizedBox(height: 20.h),

              NotificationBox(
                title: 'Flash Sale! 50% Off',
                message:
                    "Our summer sale ends tonight. Get 50% off all items in the Fashion category. Shop now!",
                time: '1 day ago',
                icon: IconManager.notificationBell,
              ),

              SizedBox(height: 15.h),

              NotificationBox(
                title: 'Security Alert!',
                message:
                    "A new login to your account was detected from a new device. If this was not you, please secure your account.",
                time: '2 day ago',
                icon: IconManager.securityalart,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
