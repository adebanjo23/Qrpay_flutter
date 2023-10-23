import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qrpay/colors.dart' as color;

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  static const String routeName = '/signup';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const SignupScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _usernameTEC = TextEditingController();
  final TextEditingController _phoneTEC = TextEditingController();
  final TextEditingController _passwordTEC = TextEditingController();
  final TextEditingController _password2TEC = TextEditingController();

  signup() async {
    final username = _usernameTEC.text;
    final phone = _phoneTEC.text;
    final password1 = _passwordTEC.text;
    final password2 = _password2TEC.text;
    try {
      final response = await http.post(
          Uri.parse("http://492f-102-91-4-178.ngrok-free.app/user/signup/"),
          body: {
            "username": username,
            "phone": phone,
            "password1": password1,
            "password2": password2
          });

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
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              //// Username Section
              Row(
                children: [
                  Text(
                    "Username",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      color: color.AppColor.SignupText2,
                  ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                  width: 1,
                  color: color.AppColor.TextContainerColor, // Set the border color to light green
                ),
                ),
                child:  Center(
                  child: TextField(
                    controller: _usernameTEC,
                    textAlignVertical: TextAlignVertical.center, // Center text vertically
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(14, 12, 14, 12),
                      hintText: "what's your name?",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              //// Phone Number Section
              const SizedBox(height: 10,),
              Row(
                children: [
                  Text(
                    "Phone",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      color: color.AppColor.SignupText2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                    color: color.AppColor.TextContainerColor, // Set the border color to light green
                  ),
                ),
                child:  Center(
                  child: TextField(
                    controller: _phoneTEC,
                    textAlignVertical: TextAlignVertical.center, // Center text vertically
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(14, 12, 14, 12),
                      hintText: "enter you phone number",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              //// Password Section
              const SizedBox(height: 10,),
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
              const SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                    color: color.AppColor.TextContainerColor, // Set the border color to light green
                  ),
                ),
                child:  Center(
                  child: TextField(
                    controller: _passwordTEC,
                    textAlignVertical: TextAlignVertical.center, // Center text vertically
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(14, 12, 14, 12),
                      hintText: "your secret code?",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              //// Confirm Password Section
              const SizedBox(height: 10,),
              Row(
                children: [
                  Text(
                    "Confirm Password",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      color: color.AppColor.SignupText2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                    color: color.AppColor.TextContainerColor, // Set the border color to light green
                  ),
                ),
                child:  Center(
                  child: TextField(
                    controller: _password2TEC,
                    textAlignVertical: TextAlignVertical.center, // Center text vertically
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(14, 12, 14, 12),
                      hintText: "make sure it is a match",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60,),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          // Navigate to /home when the image is tapped
                          Navigator.pushNamed(context, '/load3');

                        },
                        child: Image.asset('assets/6.png')
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 120,),
              Container(
                padding: const EdgeInsets.only(left: 70, right: 20),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          // Navigate to /home when the image is tapped
                          Navigator.pushNamed(context, '/login');

                        },
                        child: Image.asset('assets/7.png')
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
