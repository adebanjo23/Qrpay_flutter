import 'package:flutter/material.dart';
import 'package:qrpay/utils/config.dart';
import 'package:qrpay/colors.dart' as color;

class TransferSuccessfulScreen extends StatelessWidget {
  const TransferSuccessfulScreen({super.key});

  static const String routeName = '/transfer_successful';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const TransferSuccessfulScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    Config(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Config.spaceBig,
            Image.asset('assets/transfer_successful/img.png'),
            Config.spaceSmall,
            const Text(
              'Transaction Successful !',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Config.spaceMedium,
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                            'assets/transfer_successful/receipt_button.png')),
                  ),
                  SizedBox(
                    width: Config.screenWidth! * 0.1,
                  ),
                  Expanded(
                      child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                              'assets/transfer_successful/home_button.png')))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
