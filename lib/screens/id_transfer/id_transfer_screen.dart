import 'package:flutter/material.dart';
import 'package:qrpay/utils/config.dart';
import 'package:qrpay/colors.dart' as color;

class IdTransferScreen extends StatelessWidget {
  const IdTransferScreen({super.key});

  static const String routeName = '/id_transfer';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const IdTransferScreen(),
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
          'ID Transfer',
          style: TextStyle(color: Config.appBarFill),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 62,
        centerTitle: true,
        actions: [],
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
                'Recipient Account',
                'QRpay ID number',
              ),
            ),
            SizedBox(height: Config.screenHeight! * 0.1,),

            GestureDetector(
              onTap: () {
                // Handle button tap action here
              },
              child:
                  Image.asset('assets/bank_transfer/bank_transfer_button.png'),
            ),
            Config.spaceBig,
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200], // Change the background color as needed
                borderRadius: BorderRadius.circular(10), // Adjust the radius for the desired roundness
              ),
              child: Text('See who else is using QR pay'), // Replace YourContent with the content you want inside the container
            )

          ],
        ),
      ),
    );
  }
}
