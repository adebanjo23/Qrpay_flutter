import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  static const String routeName = '/home';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const HomeScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Index to track the current tab
  var balanceAmount = 300000; // Declare the balance amount variable
  String username = "Mayowa";
  int number = 7034460654;
  String card_no = "**** **** **** 1000";
  String exp = "05/36";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 62,
        title: const Text(''),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            gradient: LinearGradient(
              colors: [Colors.white, Colors.lightGreen],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        actions: [
          // Add a smaller circular border around the notification icon button
          Container(
            margin: EdgeInsets.only(right: 16.0), // Adjust the margin as needed
            width: 50.0, // Set the width of the container (controls the size of the circular border)
            height: 40.0, // Set the height of the container (controls the size of the circular border)
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white, // Customize the border color
                width: 1.0, // Customize the border width
              ),
            ),
            child: IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.black,// Replace with your notification icon
              onPressed: () {
                // Handle notification button press here
                // You can open a notification screen or perform any desired action
              },
            ),
          ),
        ],

      ),
    );
  }
}
