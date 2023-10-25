import 'package:flutter/material.dart';
import 'package:qrpay/utils/config.dart';

class IdTransferScreen extends StatelessWidget {
  const IdTransferScreen({super.key});

  static const String routeName = '/id_transfer';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const IdTransferScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('ID Transfer'),
          backgroundColor: Config.primaryColor
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Card Number Field
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Recipient Account',
                hintText: 'QRpay ID number',
              ),
            ),
            const SizedBox(height: 16.0), // Add spacing between fields

            GestureDetector(
              onTap: () {
                // Handle button tap action here
              },
              child: Image.asset('assets/bank_transfer/bank_transfer_button.png'),
            ),
          ],
        ),
      ),
    );
  }
}
