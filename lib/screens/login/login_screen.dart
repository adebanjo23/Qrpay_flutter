import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qrpay/colors.dart' as color;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String routeName = '/login';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const LoginScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? isChecked = false;
  final TextEditingController _phoneTEC = TextEditingController();
  final TextEditingController _passwordTEC = TextEditingController();

  login() async {
    final phone = _phoneTEC.text;
    final password = _passwordTEC.text;
    try {
      final response = await http.post(
          Uri.parse("http://492f-102-91-4-178.ngrok-free.app/user/login/"),
          body: {"phone": phone, "password": password});

      if (response.statusCode == 200) {
        print(response.body);
      } else {
        throw Exception('Failed to load post');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 120, left: 30, right: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Text(
                  "Phone Number",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    color: color.AppColor.SignupText2,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 43,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                  color: color.AppColor
                      .TextContainerColor, // Set the border color to light green
                ),
              ),
              child: Center(
                child: TextField(
                  controller: _phoneTEC,
                  textAlignVertical:
                      TextAlignVertical.center, // Center text vertically
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(14, 12, 14, 12),
                    hintText: "your phone number? ",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    color: color.AppColor.SignupText2,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 43,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                  color: color.AppColor
                      .TextContainerColor, // Set the border color to light green
                ),
              ),
              child: Center(
                child: TextField(
                  controller: _phoneTEC,
                  textAlignVertical:
                      TextAlignVertical.center, // Center text vertically
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(14, 12, 14, 12),
                    hintText: "your secret code?",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    activeColor: color.AppColor.CheckBox,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool;
                      });
                    }),
                const Text(
                  "Save Password",
                  style: TextStyle(
                    fontSize:11,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  "Forgot password?",
                  style: TextStyle(
                    fontSize:11,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    color: color.AppColor.CheckBox,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(left: 40, right: 20),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        // Navigate to /home when the image is tapped
                        Navigator.pushNamed(context, '/home');

                      },
                      child: Image.asset('assets/login_screen/2.png')
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            const Center(
              child: Text(
                "or continue with",
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 100, right: 20),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            // Navigate to /home when the image is tapped
                            Navigator.pushNamed(context, '/load3');

                          },
                          child: Image.asset('assets/login_screen/3.png')
                      ),
                      const SizedBox(width: 30,),
                      InkWell(
                          onTap: () {
                            // Navigate to /home when the image is tapped
                            Navigator.pushNamed(context, '/load3');

                          },
                          child: Image.asset('assets/login_screen/4.png')
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 130,),
            Container(
              padding: const EdgeInsets.only(left: 80, right: 20),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        // Navigate to /home when the image is tapped
                        Navigator.pushNamed(context, '/signup');

                      },
                      child: Image.asset('assets/login_screen/5.png')
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
