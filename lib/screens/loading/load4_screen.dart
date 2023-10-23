import 'package:flutter/material.dart';

class Load4Screen extends StatelessWidget {
  const Load4Screen({super.key});

  static const String routeName = '/load4';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const Load4Screen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 160),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/load_screens/7.png', // Replace with your image path
                  width: MediaQuery.of(context).size.width, // Adjust the width as needed
                  height: 300, // Adjust the height as needed
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(right: 120),
                child: const Text(
                  "Welcome To \n QRpay",
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Container(
                padding: const EdgeInsets.only(left: 60, right: 20),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          // Navigate to /home when the image is tapped
                          Navigator.pushNamed(context, '/login');

                        },
                        child: Image.asset('assets/load_screens/8.png')
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 60, right: 20),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          // Navigate to /home when the image is tapped
                          Navigator.pushNamed(context, '/signup');

                        },
                        child: Image.asset('assets/load_screens/9.png')
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}