import 'package:flutter/material.dart';
import 'package:qrpay/utils/config.dart';
import 'package:qrpay/colors.dart' as color;

class TransferFailedScreen extends StatelessWidget {
  const TransferFailedScreen({super.key});

  static const String routeName = '/transfer_failed';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const TransferFailedScreen(),
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
            Image.asset('assets/transfer_failed/img.png'),
            Config.spaceSmall,
            const Text(
              'Transaction Failed !',
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
                            'assets/transfer_failed/try_again_button.png')),
                  ),
                  SizedBox(
                    width: Config.screenWidth! * 0.1,
                  ),
                  Expanded(
                      child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                              'assets/transfer_failed/home_button.png')))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
