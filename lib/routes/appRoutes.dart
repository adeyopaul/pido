import 'package:flutter/material.dart';

import '../presentation/views/screens/forgottenPassword.dart';
import '../presentation/views/screens/signIn.dart';

class AppRoutes {
  static const String signIn = '/signIn';
  static const String forgottenPassword = '/forgottenPassword';
  static const String welcomeBack = '/welcomeBack';
  static const String signUp = '/signUp';
  static const String home = '/home';
  static const String payment = '/payment';
  static const String transfer = '/transfer';
  static const String notifications = '/notifications';
  static const String confirmTransfer = '/confirmTransfer';
  static const String transferSuccessful = '/transferSuccessful';

  static Map<String, WidgetBuilder> routes = {
    signIn: (context) => const Signin(),
    forgottenPassword: (context) => const Forgottenpassword(),

  };

}
