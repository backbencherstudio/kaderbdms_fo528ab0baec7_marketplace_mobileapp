import 'package:flutter/material.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/welcomepage/widgets/common_welcome_widget.dart';
import '../../../core/route/route_name.dart';

class WelcomeBackPage extends StatelessWidget {
  const WelcomeBackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CommonWelcomeWidget(
          imagePath: "assets/images/welcomeback.png",
          title: "Hey! Welcome Back",
          subtitle:
              "Nice to see you again. Let’s find your\nfavorite products and services!",
          buttonText: "Go to Home",
          onButtonTap: () {
            Navigator.pushNamed(context, RouteName.bottomNavBar);
          },
        ),
      ),
    );
  }
}
