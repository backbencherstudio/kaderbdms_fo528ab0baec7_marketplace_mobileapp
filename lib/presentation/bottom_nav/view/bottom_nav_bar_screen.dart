import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/cart/view/cart_screen.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/category/view/category_screen.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/chat/view/chatting_history_screen.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/home/view/home_screen.dart';

import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/profile/view/profile_screen.dart';
import '../../../core/resource/constansts/color_manger.dart';
import '../../../core/resource/constansts/icon_manager.dart';
import '../viewmodel/bottom_nav_bar_viewmodel.dart';

class BottomNavBar extends ConsumerStatefulWidget {
  const BottomNavBar({super.key});

  @override
  ConsumerState<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends ConsumerState<BottomNavBar> {
  final List<Widget> _screens = [
    const HomeScreen(),
    CategoryScreen(),
    const ChattingHistoryScreen(),
    const CartScreen(),
    const ProfilePageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(bottomNavBarProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[currentIndex],
      bottomNavigationBar: Container(
        height: 90.h,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _navItem(
                  icon: IconManager.homeIcon,
                  label: 'Home',
                  index: 0,
                  currentIndex: currentIndex,
                ),
                _navItem(
                  icon: IconManager.elementIcon,
                  label: 'Categories',
                  index: 1,
                  currentIndex: currentIndex,
                ),
                _navItem(
                  icon: IconManager.chatIcon,
                  label: 'Chat',
                  index: 2,
                  currentIndex: currentIndex,
                ),
                _navItem(
                  icon: IconManager.cartIcon,
                  label: 'Cart',
                  index: 3,
                  currentIndex: currentIndex,
                ),
                _navItem(
                  icon: IconManager.profileIcon,
                  label: 'Profile',
                  index: 4,
                  currentIndex: currentIndex,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _navItem({
    required String icon,
    required String label,
    required int index,
    required int currentIndex,
  }) {
    final bool isActive = currentIndex == index;

    return InkWell(
      onTap: () {
        ref.read(bottomNavBarProvider.notifier).onItemTapped(index);
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // top indicator bar
          Container(
            height: 3,
            width: 55,
            decoration: BoxDecoration(
              color: isActive ? ColorManager.primary : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 8),
          Image.asset(
            icon,
            height: 24,
            width: 24,
            color: isActive ? ColorManager.primary : Colors.black,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
              color: isActive ? ColorManager.primary : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
