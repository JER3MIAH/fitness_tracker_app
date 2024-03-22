import 'package:fitness_tracker_app/src/features/navigation/routes.dart';
import 'package:fitness_tracker_app/src/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'nav.dart';

class AppPages {
  static const initial = SplashRoute.splash;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: SplashRoute.splash,
      page: () => const SplashScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    ...authPages,
    ...homePages,
    ...trackPages,
    ...statisticsPages,
    ...settingsPages
  ];
}

//*-------------------------------Auth Routes---------------------------------------------
List<GetPage> authPages = [
  // GetPage(
  //   name: AuthRoutes.onboarding,
  //   page: () => const OnboardingScreen(),
  //   transition: Transition.native,
  //   transitionDuration: const Duration(milliseconds: 500),
  // ),
  // GetPage(
  //   name: AuthRoutes.login,
  //   page: () => const LoginView(),
  //   transition: Transition.native,
  //   transitionDuration: const Duration(milliseconds: 500),
  // ),
  // GetPage(
  //   name: AuthRoutes.signUp,
  //   page: () => const SignUpView(),
  //   transition: Transition.native,
  //   transitionDuration: const Duration(milliseconds: 500),
  // ),
  //  GetPage(
  //   name: AuthRoutes.otpVerification,
  //   page: () => const OtpVerificationView(),
  //   transition: Transition.native,
  //   transitionDuration: const Duration(milliseconds: 500),
  // ),
  // GetPage(
  //   name: AuthRoutes.forgotPassword,
  //   page: () => const ForgotPasswordView(),
  //   transition: Transition.native,
  //   transitionDuration: const Duration(milliseconds: 500),
  // ),
];

//*-------------------------------Home Routes---------------------------------------------
List<GetPage> homePages = [
  // GetPage(
  //   name: HomeRoutes.home,
  //   page: () => const HomeView(),
  //   transition: Transition.native,
  //   transitionDuration: const Duration(milliseconds: 500),
  // ),
];

//*-------------------------------Track Routes--------------------------------------------
List<GetPage> trackPages = [];

//*---------------------------Statiststics Routes-----------------------------------------
List<GetPage> statisticsPages = [];

//*------------------------------Settings Routes------------------------------------------
List<GetPage> settingsPages = [];
