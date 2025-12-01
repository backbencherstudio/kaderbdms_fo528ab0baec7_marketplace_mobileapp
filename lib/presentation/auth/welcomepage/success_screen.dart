import 'package:flutter/material.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/welcomepage/widgets/common_welcome_widget.dart';
import '../../../core/route/route_name.dart';

class successPage extends StatelessWidget {
  const successPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CommonWelcomeWidget(
          imagePath: "assets/images/success.png",
          title: "Successful",
          subtitle:
              "Congratulations! Your password has\nbeen successfully updated. Click\nContinue to login",
          buttonText: "Continue",
          onButtonTap: () {
            Navigator.pushNamed(context, RouteName.loginRoute);
          },
        ),
      ),
    );
  }
}
