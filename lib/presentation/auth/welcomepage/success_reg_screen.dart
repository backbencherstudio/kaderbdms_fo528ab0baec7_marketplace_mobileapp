import 'package:flutter/material.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/welcomepage/widgets/common_welcome_widget.dart';

class SuccessRegistrationPage extends StatelessWidget {
  const SuccessRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CommonWelcomeWidget(
          imagePath: "assets/images/successreg.png",
          title: "Successfully Registered",
          subtitle:
              "Your account has been registered\nsuccesfully, now let’s enjoy your\nshopping!",
          buttonText: "Continue",
          onButtonTap: () {
            Navigator.pushNamed(context, Routes.loginRoute);
          },
        ),
      ),
    );
  }
}
