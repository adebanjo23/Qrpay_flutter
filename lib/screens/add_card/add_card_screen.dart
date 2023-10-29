import 'package:flutter/material.dart';
import 'package:qrpay/utils/config.dart';
import 'package:qrpay/colors.dart' as color;

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  static const String routeName = '/add_card';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const AddCardScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  InputDecoration _roundedBoxDecoration(String labelText, String hintText) {
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      contentPadding: const EdgeInsets.all(16.0),
      border: InputBorder.none,

      filled: true,
      fillColor: Colors.grey[200], // Adjust the background color as needed
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(20.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Config(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Card',
          style: TextStyle(color: Config.appBarFill),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 62,
        centerTitle: true,
        actions: const [],
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Card Number Field
            TextFormField(
              decoration: _roundedBoxDecoration(
                'Card Number',
                'Enter 10 digits',
              ),
            ),
            Config.spaceSmall,

            // Name on Card Field
            TextFormField(
              decoration: _roundedBoxDecoration(
                'Name on Card',
                'Enter full name',
              ),
            ),
            Config.spaceSmall,

            // Expiry Date and CVV Fields in a Row
            Row(
              children: [
                // Expiry Date Field
                Expanded(
                  child: TextFormField(
                    decoration: _roundedBoxDecoration(
                      'Expiry Date',
                      'MM/YY',
                    ),
                  ),
                ),
                SizedBox(width: Config.screenWidth! *0.1), // Add spacing between fields

                // CVV Field
                Expanded(
                  child: TextFormField(
                    decoration: _roundedBoxDecoration(
                      'CVV',
                      'XXX',
                    ),
                  ),
                ),
              ],
            ),
            Config.spaceBig,
            GestureDetector(

                onTap: () {

                },
                child: Image.asset('assets/add_card/add_card_button.png')),
          ],
        ),
      ),
    );
  }
}
