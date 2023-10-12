import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qrpay/config/app_router.dart';
import 'package:qrpay/config/theme.dart';
import 'package:qrpay/screens/login/login_screen.dart';
import 'package:qrpay/screens/screens.dart';
import 'package:qrpay/screens/splash/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: LoginScreen.routeName,
    );
  }
}




