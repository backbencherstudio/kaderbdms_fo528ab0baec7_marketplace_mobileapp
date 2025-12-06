part of "route_import_part.dart";

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteName.splashRoute:
        return MaterialPageRoute(builder: (_) => SearchItemScreen());

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

      case RouteName.editProfileRoute:
        return MaterialPageRoute(builder: (_) => const editProfileScreen());

      case RouteName.myordersRoute:
        return MaterialPageRoute(builder: (_) => const MyOrderScreen());

      case RouteName.orderDetailsRoute:
        return MaterialPageRoute(builder: (_) => const orderDetails());

      case RouteName.reviewRoute:
        return MaterialPageRoute(builder: (_) => const ReviewScreen());

      case RouteName.orderListRoute:
        return MaterialPageRoute(builder: (_) => const OrderListScreen());

      case RouteName.wishListRoute:
        return MaterialPageRoute(builder: (_) => const WishList());

      case RouteName.wishListScreenRoute:
        return MaterialPageRoute(builder: (_) => const WishListScreen());

      case RouteName.fashionScreenRoute:
        return MaterialPageRoute(builder: (_) => const FashionScreen());

      case RouteName.jewelryScreenRoute:
        return MaterialPageRoute(builder: (_) => const JewelryScreen());

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
