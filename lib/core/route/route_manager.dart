part of "route_import_part.dart";

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteName.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case RouteName.onBoadingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case RouteName.bottomNavBar:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());

      case RouteName.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());

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

      case RouteName.menShirtScreenRoute:
        return MaterialPageRoute(builder: (_) => const MenShirtScreen());

      case RouteName.categoryScreenRoute:
        return MaterialPageRoute(builder: (_) => CategoryScreen());

      case RouteName.searchItemScreenRoute:
        return MaterialPageRoute(builder: (_) => SearchItemScreen());

      case RouteName.productSearchScreenRoute:
        return MaterialPageRoute(builder: (_) => ProductSearchScreen());

      case RouteName.productDetailsPageRoute:
        return MaterialPageRoute(builder: (_) => ProductDetailsPage());

      case RouteName.chatScreenRoute:
        return MaterialPageRoute(builder: (_) => ChatScreen());

      case RouteName.homeScreenRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      case RouteName.orderAddressScreenRoute:
        return MaterialPageRoute(builder: (_) => OrderAddressScreen());

      case RouteName.confirmOrderScreenRoute:
        return MaterialPageRoute(builder: (_) => ConfirmOrderScreen());

      case RouteName.orderPlaceScreenRoute:
        return MaterialPageRoute(builder: (_) => OrderPlaceScreen());

      case RouteName.faqScreenRoute:
        return MaterialPageRoute(builder: (_) => FaqScreen());

      case RouteName.privacyPolicyScreenRoute:
        return MaterialPageRoute(builder: (_) => PrivacyPolicyScreen());

      case RouteName.termsofuseScreenRoute:
        return MaterialPageRoute(builder: (_) => TermsofuseScreen());

      case RouteName.notificationListRoute:
        return MaterialPageRoute(builder: (_) => NotificationList());

      case RouteName.notificationSettingRoute:
        return MaterialPageRoute(builder: (_) => NotificationSetting());

      case RouteName.notificationScreenRoute:
        return MaterialPageRoute(builder: (_) => NotificationScreen());

      case RouteName.cartScreenRoute:
        return MaterialPageRoute(builder: (_) => CartScreen());

      default:
        return unDefineRoute();
    }
  }

  //CartScreen
  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text(AppString.noRoute)),
        body: Center(child: Text(AppString.noRoute)),
      ),
    );
  }
}
