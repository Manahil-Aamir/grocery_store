import 'package:flutter_project/modules/intro/bindings/intro_bindings.dart';
import 'package:flutter_project/modules/intro/view/intro_view.dart';
import 'package:flutter_project/modules/landingscreen/bindings/landing_bindings.dart';
import 'package:flutter_project/modules/landingscreen/view/landing_view.dart';
import 'package:flutter_project/modules/login/bindings/login_bindings.dart';
import 'package:flutter_project/modules/login/view/login_view.dart';
import 'package:flutter_project/modules/signup/bindings/signup_bindings.dart';
import 'package:flutter_project/modules/signup/view/signup_view.dart';
import 'package:flutter_project/modules/splashscreen/binding/splash_binding.dart';
import 'package:flutter_project/modules/splashscreen/view/splash_view.dart';
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
        page: () => const LoginView(),
        binding: LoginBindings()),
    GetPage(
        name: Routes.intro,
        page: () => const IntroView(),
        binding: IntroBindings()),
    GetPage(
        name: Routes.splash,
        page: () => const SplashView(),
        binding: SplashBindings()),
    GetPage(
        name: Routes.signup,
        page: () => const SignupView(),
        binding: SignupBindings()),
    GetPage(
        name: Routes.landing,
        page: () => const LandingView(),
        binding: LandingBindings()),
  ];
}
