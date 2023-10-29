import 'package:flutter/material.dart';
import 'package:qrpay/utils/config.dart';
import 'package:qrpay/colors.dart' as color;

class AddCardSuccessfulScreen extends StatelessWidget {
  const AddCardSuccessfulScreen({super.key});

  static const String routeName = '/add_card_successful';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const AddCardSuccessfulScreen(),
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
            GestureDetector(
                child: Image.asset('assets/add_card_successful/img.png')),
            Config.spaceMedium,
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Congratulations you have successfully added',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'a new card to your wallet',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Config.spaceBig,
            GestureDetector(
                onTap: () {},
                child: SizedBox(
                  width: Config.screenWidth! * 0.7,
                    child: Image.asset(
                        'assets/add_card_successful/home_button.png')))
          ],
        ),
      ),
    );
  }
}
