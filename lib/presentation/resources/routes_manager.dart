import 'package:advanced_flutter/presentation/forgot_password/forgot_password.dart';
import 'package:advanced_flutter/presentation/login/login.dart';
import 'package:advanced_flutter/presentation/main/main_view.dart';
import 'package:advanced_flutter/presentation/onboarding/onboarding.dart';
import 'package:advanced_flutter/presentation/register/register.dart';
import 'package:advanced_flutter/presentation/resources/strings_manager.dart';
import 'package:advanced_flutter/presentation/splash/splash.dart';
import 'package:advanced_flutter/presentation/store_details/store_details.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onboarding";
  static const String login = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String main = "/main";
  static const String storedDetailedRoutes = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesManager.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case RoutesManager.login:
        return MaterialPageRoute(builder: (_) => LoginView());
      case RoutesManager.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingView());
      case RoutesManager.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case RoutesManager.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPasswordView());
      case RoutesManager.main:
        return MaterialPageRoute(builder: (_) => MainView());
      case RoutesManager.storedDetailedRoutes:
        return MaterialPageRoute(builder: (_) => StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(StringsManager.noRouteFound),
        ),
        body: Center(
          child: Text(StringsManager.noRouteFound),
        ),
      ),
    );
  }
}
