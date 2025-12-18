import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_name.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/welcomepage/widgets/common_welcome_widget.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/bottom_nav/viewmodel/bottom_nav_bar_viewmodel.dart';

class WelcomeBackPage extends ConsumerWidget {
  const WelcomeBackPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.h),
            CommonWelcomeWidget(
              imagePath: ImageManager.welcomeback,
              title: "Hey! Welcome Back",
              subtitle:
                  "Nice to see you again. Let’s find your\nfavorite products and services!",
              buttonText: "Go to Home",
              onButtonTap: () {
                ref.read(bottomNavBarProvider.notifier).onItemTapped(0);

                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RouteName.bottomNavBar,
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
