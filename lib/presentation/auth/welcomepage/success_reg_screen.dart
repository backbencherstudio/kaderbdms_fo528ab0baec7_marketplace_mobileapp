import 'package:flutter/material.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/welcomepage/widgets/common_welcome_widget.dart';
import '../../../core/route/route_name.dart';

class SuccessRegistrationPage extends StatelessWidget {
  const SuccessRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CommonWelcomeWidget(
          imagePath: ImageManager.successreg,
          title: "Successfully Registered",
          subtitle:
              "Your account has been registered\nsuccesfully, now let’s enjoy your\nshopping!",
          buttonText: "Continue",
          onButtonTap: () {
            Navigator.pushNamed(context, RouteName.loginRoute);
          },
        ),
      ),
    );
  }
}
