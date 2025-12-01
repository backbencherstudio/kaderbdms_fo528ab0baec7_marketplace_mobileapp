import 'package:flutter/material.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/common/widgets/extraa.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/signin/view/PasswordRecovery/view/forgot_password.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/signin/view/PasswordRecovery/view/new_password_screen.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/signin/view/PasswordRecovery/view/otp_page.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/signup/view/signup_otp.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/signup/view/signup_screen.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/welcomepage/success_reg_screen.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/welcomepage/success_screen.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/welcomepage/welcome_back_screen.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/bottom_nav/view/bottom_nav_bar_screen.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/splash/view/splash_screen.dart';

import '../../presentation/Onboarding/view/onboarding_page.dart';
import '../resource/app_strings.dart';
import '../../presentation/auth/signin/view/signin_screen.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoadingRoute = "/onboarding";
  static const String bottomNavRoute = "/bottomNav";
  static const String loginRoute = "/login";
  static const String welcomeRoute = "/welcome";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String newPasswordRoute = "/newPassword";
  static const String otpPageRoute = "/otpPage";
  static const String successRoute = "/successpage";
  static const String registerRoute = "/register";
  static const String signupOtpRoute = "/signupotp";
  static const String successRegistrationRoute = "/successRegistration";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());

      case Routes.onBoadingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routes.bottomNavRoute:
        return MaterialPageRoute(builder: (_) => const BottomNavBarScreen());

      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.welcomeRoute:
        return MaterialPageRoute(builder: (_) => WelcomeBackPage());

      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPasswordPage());

      case Routes.newPasswordRoute:
        return MaterialPageRoute(builder: (_) => NewPasswordPage());

      case Routes.otpPageRoute:
        return MaterialPageRoute(builder: (_) => OtpScreen());

      case Routes.successRoute:
        return MaterialPageRoute(builder: (_) => successPage());

      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => SignupScreen());

      case Routes.signupOtpRoute:
        return MaterialPageRoute(builder: (_) => SignupOtp());

      case Routes.successRegistrationRoute:
        return MaterialPageRoute(builder: (_) => SuccessRegistrationPage());

      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text(AppString.noRoute)),
        body: Center(child: Text(AppString.noRoute)),
      ),
    );
  }
}
