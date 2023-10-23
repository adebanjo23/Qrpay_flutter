import 'package:flutter/material.dart';
import 'package:qrpay/colors.dart' as color;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key});

  static const String routeName = '/splash';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const SplashScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLoginAfterDelay();
  }

  Future<void> _navigateToLoginAfterDelay() async {
    await Future.delayed(const Duration(seconds: 5)); // Wait for 3 seconds

    Navigator.pushNamed(context, '/load1'); // Navigate to the login screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color.AppColor.splashScreenBackground1.withOpacity(0.2),
            color.AppColor.splashScreenBackground2.withOpacity(0.3),
            color.AppColor.splashScreenBackground3.withOpacity(0.2),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/qrpay.png', // Replace with your image path
            width: 200, // Adjust the width as needed
            height: 200, // Adjust the height as needed
          ),
        ),
      ),
    );
  }
}
