part of "route_import_part.dart";

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteName.splashRoute:
        return MaterialPageRoute(builder: (_) => ProfilePageScreen());

      case RouteName.onBoadingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case RouteName.bottomNavBar:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());

      case RouteName.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case RouteName.welcomeRoute:
        return MaterialPageRoute(builder: (_) => WelcomeBackPage());

      case RouteName.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPasswordPage());

      case RouteName.newPasswordRoute:
        return MaterialPageRoute(builder: (_) => NewPasswordPage());

      case RouteName.otpPageRoute:
        return MaterialPageRoute(builder: (_) => OtpScreen());

      case RouteName.successRoute:
        return MaterialPageRoute(builder: (_) => successPage());

      case RouteName.registerRoute:
        return MaterialPageRoute(builder: (_) => SignupScreen());

      case RouteName.signupOtpRoute:
        return MaterialPageRoute(builder: (_) => SignupOtp());

      case RouteName.successRegistrationRoute:
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
