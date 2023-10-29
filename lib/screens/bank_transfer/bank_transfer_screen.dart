import 'package:flutter/material.dart';
import 'package:qrpay/utils/config.dart';
import 'package:qrpay/colors.dart' as color;

class BankTransferScreen extends StatelessWidget {
  const BankTransferScreen({Key? key});

  static const String routeName = '/bank_transfer';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const BankTransferScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  // Create a rounded box-style decoration
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
          'Bank Transfer',
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
            TextFormField(
              decoration: _roundedBoxDecoration(
                'Recipient Account',
                'Enter Recipient Account Number',
              ),
            ),
            Config.spaceSmall,

            TextFormField(
              decoration: _roundedBoxDecoration('Bank', 'Select Bank'),
            ),
            Config.spaceSmall,

            TextFormField(
              decoration:
                  _roundedBoxDecoration('Amount', '100.00 - 2,000,000.00'),
            ),
            Config.spaceBig,

            GestureDetector(
              onTap: () {
                // Handle button tap action here
              },
              child:
                  Image.asset('assets/bank_transfer/bank_transfer_button.png'),
            ),
          ],
        ),
      ),
    );
  }
}
