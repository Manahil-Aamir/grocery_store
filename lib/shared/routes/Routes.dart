import 'package:flutter_project/modules/authentication/accountcreated/bindings/created_bindings.dart';
import 'package:flutter_project/modules/authentication/accountcreated/view/created_page.dart';
import 'package:flutter_project/modules/authentication/verify/bindings/verify_bindings.dart';
import 'package:flutter_project/modules/authentication/verify/view/verify_page.dart';
import 'package:flutter_project/modules/base/bindings/base_bindings.dart';
import 'package:flutter_project/modules/base/view/base_page.dart';
import 'package:flutter_project/modules/categoryscreen/bindings/category_bindings.dart';
import 'package:flutter_project/modules/categoryscreen/view/category_page.dart';
import 'package:flutter_project/modules/intro/bindings/intro_bindings.dart';
import 'package:flutter_project/modules/intro/view/intro_page.dart';
import 'package:flutter_project/modules/landingscreen/bindings/landing_bindings.dart';
import 'package:flutter_project/modules/landingscreen/view/landing_page.dart';
import 'package:flutter_project/modules/authentication/login/bindings/login_bindings.dart';
import 'package:flutter_project/modules/authentication/login/view/login_page.dart';
import 'package:flutter_project/modules/authentication/signup/bindings/signup_bindings.dart';
import 'package:flutter_project/modules/authentication/signup/view/signup_page.dart';
import 'package:flutter_project/modules/product/bindings/product_bindings.dart';
import 'package:flutter_project/modules/product/view/product_page.dart';
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
  static const verify = _Path.verify;
  static const created = _Path.created;
  static const base = _Path.base;
  static const category = _Path.category;
  static const product = _Path.product;
}

abstract class _Path {
  static const login = '/Login';
  static const intro = '/Intro';
  static const splash = '/Splash';
  static const signup = '/Signup';
  static const landing = '/Landing';
  static const verify = '/Verify';
  static const created = '/Created';
  static const base = '/Base';
  static const category = '/Category';
  static const product = '/Product';
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
    GetPage(
        name: Routes.verify,
        page: () => const VerifyPage(),
        binding: VerifyBindings()),
    GetPage(
        name: Routes.created,
        page: () => const CreatedPage(),
        binding: CreatedBindings()),
    GetPage(
        name: Routes.base,
        page: () => const BasePage(),
        binding: BaseBindings()),
    GetPage(
        name: Routes.category,
        page: () => const CategoryPage(),
        binding: CategoryBindings()),
    GetPage(
        name: Routes.product,
        page: () => const ProductPage(),
        binding: ProductBindings()),
  ];
}
