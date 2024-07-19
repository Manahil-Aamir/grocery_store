import 'package:flutter_project/modules/intro/bindings/intro_bindings.dart';
import 'package:flutter_project/modules/intro/view/intro_page.dart';
import 'package:flutter_project/modules/landingscreen/bindings/landing_bindings.dart';
import 'package:flutter_project/modules/landingscreen/view/landing_page.dart';
import 'package:flutter_project/modules/authentication/login/bindings/login_bindings.dart';
import 'package:flutter_project/modules/authentication/login/view/login_page.dart';
import 'package:flutter_project/modules/authentication/signup/bindings/signup_bindings.dart';
import 'package:flutter_project/modules/authentication/signup/view/signup_page.dart';
import 'package:flutter_project/modules/splashscreen/binding/splash_binding.dart';
import 'package:flutter_project/modules/splashscreen/view/splash_page.dart';
import 'package:get/get.dart';

class Routes {
  Routes._();
  static const login = _Path.login;
  static const intro = _Path.intro;
  static const splash = _Path.splash;
  static const signup = _Path.signup;
  static const landing = _Path.landing;
}

abstract class _Path {
  static const login = '/Login';
  static const intro = '/Intro';
  static const splash = '/Splash';
  static const signup = '/Signup';
  static const landing = '/Landing';
}

class Pages {
  Pages._();

  static final allPages = [
    GetPage(
        name: Routes.login,
        page: () => const LoginPage(),
        binding: LoginBindings()),
    GetPage(
        name: Routes.intro,
        page: () => const IntroPage(),
        binding: IntroBindings()),
    GetPage(
        name: Routes.splash,
        page: () => const SplashPage(),
        binding: SplashBindings()),
    GetPage(
        name: Routes.signup,
        page: () => const SignupPage(),
        binding: SignupBindings()),
    GetPage(
        name: Routes.landing,
        page: () => const LandingPage(),
        binding: LandingBindings()),
  ];
}
