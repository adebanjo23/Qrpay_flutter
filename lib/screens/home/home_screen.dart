import 'package:flutter/material.dart';
import 'package:qrpay/colors.dart' as color;

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
  var balanceAmount = 3000000; // Declare the balance amount variable
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
        centerTitle: true,
        actions: [
          IconButton(
            icon: Container(
              padding: const EdgeInsets.all(6.0), // Adjust padding for sizing
              decoration: BoxDecoration(
                color: Colors.white, // White background for the circular shape
                shape: BoxShape.circle,
                border:
                    Border.all(color: Colors.black, width: 1.5), // Black border
              ),
              child: const Icon(
                Icons.notifications,
                color: Colors.black, // Black icon color
                size: 20.0, // Adjust icon size if necessary
              ),
            ),
            onPressed: () {
              // Handle the notification icon tap here.
            },
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            gradient: LinearGradient(
              colors: [
                color.AppColor.HomeScreenAppBar1,
                color.AppColor.HomeScreenAppBar1,
                color.AppColor.HomeScreenAppBar2.withOpacity(0.66),
              ],
              begin: const Alignment(0, -2),
              end: const Alignment(0, 2),
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 16, left: 30, right: 35),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    width: 159,
                    height: 86,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: color.AppColor
                            .HomeScreenBox1, // Set the border color to light green
                      ),
                      gradient: LinearGradient(
                        colors: [
                          color.AppColor.HomeScreenBoxin1.withOpacity(0.3),
                          color.AppColor.HomeScreenBoxin2.withOpacity(0.3),
                          color.AppColor.HomeScreenBoxin3.withOpacity(0.3),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        stops: const [0.1, 0.5, 1.0],
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Balance",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '$balanceAmount',
                                style: const TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                child: Image.asset(
                                    'assets/home_screen/2.png'), // Replace with your fourth image asset path
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                child: Image.asset(
                                    'assets/home_screen/1.png'), // Replace with your fourth image asset path
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello $username",
                      style: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Welcome back",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "ID: $number",
                      style: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    // Navigate to /home when the image is tapped
                    Navigator.pushNamed(context, '/add_money');
                  },
                  child: Image.asset(
                      'assets/home_screen/3.png'), // Replace with your fourth image asset path
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    // Navigate to /home when the image is tapped
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Image.asset(
                      'assets/home_screen/4.png'), // Replace with your fourth image asset path
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  'My cards',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Expanded(child: Container()),
                InkWell(
                  onTap: () {
                    // Navigate to /home when the image is tapped
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Image.asset(
                      'assets/home_screen/5.png'), // Replace with your fourth image asset path
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Stack(
                children: [
                  Container(
                    width: 287,
                    height: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          color.AppColor.Card01.withOpacity(0.2),
                          color.AppColor.Card02.withOpacity(0.4),
                          color.AppColor.Card03.withOpacity(0.2),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: const [0.2, 0.5, 0.9],
                      ),
                    ),
                    child: const Center(
                      child: Text('',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                  Container(
                      width: 265,
                      height: 115,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: [Colors.white, Color(0xFFD3D3D3)],
                          stops: [0.7, 0.95],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Container(
                        padding:
                            const EdgeInsets.only(top: 20, left: 25, right: 5),
                        child: Column(
                          children: [
                            Row(children: [
                              Text(
                                "Visa Card",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.2),
                                ),
                              ),
                              Expanded(child: Container()),
                              Text(
                                "Verve",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.2),
                                ),
                              ),
                              Image.asset(
                                'assets/home_screen/11.png', // Replace with your image path
                                width: 29, // Adjust the width as needed
                                height: 17, // Adjust the height as needed
                              )
                            ]),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(children: [
                              Text(
                                card_no,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF424242),
                                ),
                              ),
                              Expanded(child: Container()),
                              Text(
                                exp,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.2),
                                ),
                              ),
                            ])
                          ],
                        ),
                      )),
                  Container(
                      width: 233,
                      height: 115,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            color.AppColor.Card01.withOpacity(0.4),
                            color.AppColor.Card02.withOpacity(0.4),
                            color.AppColor.Card03.withOpacity(0.4),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          stops: const [0.2, 0.5, 0.9],
                        ),
                      ),
                      child: Container(
                        padding:
                            const EdgeInsets.only(top: 20, left: 25, right: 25),
                        child: Column(
                          children: [
                            Row(children: [
                              const Text(
                                "Visa Card",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(child: Container()),
                              const Text(
                                "Visa",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(children: [
                              Text(
                                card_no,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF424242),
                                ),
                              ),
                              Expanded(child: Container()),
                              Text(
                                exp,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF424242),
                                ),
                              ),
                            ])
                          ],
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "Recent Activities",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Expanded(child: Container()),
                InkWell(
                  onTap: () {
                    // Navigate to /home when the image is tapped
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Image.asset(
                      'assets/home_screen/6.png'), // Replace with your fourth image asset path
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (_, i) {
                    return Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          width: 320,
                          height: 92,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFD3D3D3),
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 2,
                                    offset: Offset(5, 5),
                                    color: Colors.white)
                              ]),
                        )
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[200], // Light grey background color
        currentIndex: _currentIndex,
        onTap: (int index) {
          // Handle tapping on the navigation bar items
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.scanner),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
