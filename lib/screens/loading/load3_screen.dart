import 'package:flutter/material.dart';

class Load3Screen extends StatelessWidget {
  const Load3Screen({super.key});

  static const String routeName = '/load3';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const Load3Screen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 140),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/load_screens/6.png', // Replace with your image path
                width: MediaQuery.of(context).size.width, // Adjust the width as needed
                height: 200, // Adjust the height as needed
              ),
            ),
            Center(
              child: Image.asset(
                'assets/load_screens/11.png', // Replace with your image path
                width: MediaQuery.of(context).size.width, // Adjust the width as needed
                height: 100, // Adjust the height as needed
              ),
            ),
            const Text(
              "Offline payments",
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 14.52),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40), // Adjust the padding as needed
              child: const Text(
                  "No internet? No problem! conveniently make payments even when you're offline",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center
              ),
            ),
            const SizedBox(height:170,),
            Container(
              padding: const EdgeInsets.only(left: 40, right: 20),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        // Navigate to /home when the image is tapped
                        Navigator.pushNamed(context, '/load4');

                      },
                      child: Image.asset('assets/load_screens/4.png')
                  ),
                  const SizedBox(width: 40,),
                  InkWell(
                      onTap: () {
                        // Navigate to /home when the image is tapped
                        Navigator.pushNamed(context, '/load4');
                      },
                      child: Image.asset('assets/load_screens/3.png')
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
