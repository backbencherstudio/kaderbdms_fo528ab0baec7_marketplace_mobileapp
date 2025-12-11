import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/notification/view/widgets/notification_alart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pushProvider = StateProvider<bool>((ref) => false);
final soundProvider = StateProvider<bool>((ref) => false);
final vibrateProvider = StateProvider<bool>((ref) => false);

class NotificationSetting extends ConsumerWidget {
  NotificationSetting({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final push = ref.watch(pushProvider);
    final sound = ref.watch(soundProvider);
    final vibrate = ref.watch(vibrateProvider);

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
                onChanged: (v) {
                  ref.read(pushProvider.notifier).state = v;
                },
              ),

              SizedBox(height: 15.h),

              SettingBox(
                title: "Sound",
                value: sound,
                onChanged: (v) {
                  ref.read(soundProvider.notifier).state = v;
                },
              ),

              SizedBox(height: 15.h),

              SettingBox(
                title: "Vibrate",
                value: vibrate,
                onChanged: (v) {
                  ref.read(vibrateProvider.notifier).state = v;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
