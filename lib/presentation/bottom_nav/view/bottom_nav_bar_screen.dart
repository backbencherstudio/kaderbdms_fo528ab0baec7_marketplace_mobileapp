// // import 'package:flutter/material.dart';
// // import 'package:flutter_riverpod/flutter_riverpod.dart';

// // import '../viewmodel/bottom_nav_bar_viewmodel.dart';

// // class BottomNavBarScreen extends ConsumerStatefulWidget {
// //   const BottomNavBarScreen({super.key});

// //   @override
// //   ConsumerState<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
// // }

// // class _BottomNavBarScreenState extends ConsumerState<BottomNavBarScreen> {
// //   final List<Widget> _screenList = [
// //     Scaffold(body: Center(child: Text("Home"))),
// //     Scaffold(body: Center(child: Text("dangerous"))),
// //     Scaffold(body: Center(child: Text("search"))),
// //     Scaffold(body: Center(child: Text("settings"))),
// //   ];
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: _screenList[ref.watch(bottomNavBarProvider)],
// //       bottomNavigationBar: BottomNavigationBar(
// //         onTap: ref.read(bottomNavBarProvider.notifier).onItemTapped,
// //         items: [
// //           BottomNavigationBarItem(icon: Icon(Icons.home)),
// //           BottomNavigationBarItem(icon: Icon(Icons.dangerous)),
// //           BottomNavigationBarItem(icon: Icon(Icons.search)),
// //           BottomNavigationBarItem(icon: Icon(Icons.settings)),
// //         ],
// //       ),
// //     );
// //   }
// // }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/bottom_nav/view/cart_page_screen.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/bottom_nav/view/category_page_screen.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/bottom_nav/view/chat_page_screen.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/bottom_nav/view/home_page_screen.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/bottom_nav/view/profile_page_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => BottomNavBarScreenState();
}

class BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex = 0;

  final screens = [
    HomePageScreen(),
    CategoryPageScreen(),
    ChatPageScreen(),
    CartPageScreen(),
    ProfilePageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        height: 110.h,
        decoration: BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              navItem("assets/icons/home.png", "Home", 0),
              navItem("assets/icons/element.png", "Categories", 1),
              navItem("assets/icons/chat.png", "Chat", 2),
              navItem("assets/icons/cart.png", "Cart", 3),
              navItem("assets/icons/profile.png", "Profile", 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget navItem(String icon, String label, int index) {
    final bool isActive = currentIndex == index;

    return InkWell(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 3,
            width: 55,
            decoration: BoxDecoration(
              color: isActive ? AppColors.primary : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          const SizedBox(height: 8),
          Image.asset(
            icon,
            height: 25.h,
            width: 25.w,
            color: isActive ? AppColors.primary : Colors.black,
          ),

          const SizedBox(height: 8),

          Text(
            label,
            style: customTextStyle(
              fontFamily: FontConstants.fontFamilyInter,
              fontWeight: isActive
                  ? FontWeightManager.semiBold600
                  : FontWeightManager.regural400,
              fontSize: 14,
              color: isActive ? AppColors.primary : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
