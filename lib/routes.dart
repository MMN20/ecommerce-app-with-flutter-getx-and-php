import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_eccommerce_user/core/middleware/my_middleware.dart';
import 'package:my_eccommerce_user/view/screens/auth/forgot_password.dart';
import 'package:my_eccommerce_user/view/screens/auth/login.dart';
import 'package:my_eccommerce_user/view/screens/auth/reset_password.dart';
import 'package:my_eccommerce_user/view/screens/auth/singup.dart';
import 'package:my_eccommerce_user/view/screens/auth/verify_code.dart';
import 'package:my_eccommerce_user/view/screens/home_page.dart';
import 'package:my_eccommerce_user/view/screens/language.dart';
import 'package:my_eccommerce_user/view/screens/onboarding.dart';

class AppRoutes {
  static const String language = "/language";
  static const String onBoarding = "/onboarding";
  static const String login = "/login";
  static const String signUp = "/signup";
  static const String verifycode = "/verifycode";
  static const String homePage = "/homePage";
  static const String resetPassword = "/resetPassword";
  static const String forgetPassword = "/forgetPassword";
}

List<GetPage> pages = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoutes.onBoarding, page: () => const OnBoarding()),
  GetPage(name: AppRoutes.login, page: () => const LoginPage()),
  GetPage(name: AppRoutes.signUp, page: () => const SignUpPage()),
  GetPage(name: AppRoutes.verifycode, page: () => const VerifyCode()),
  GetPage(name: AppRoutes.homePage, page: () => const HomePage()),
  GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoutes.forgetPassword, page: () => const ForgetPasswordPage()),
];
