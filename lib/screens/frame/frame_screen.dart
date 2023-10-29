import 'package:flutter/material.dart';
import 'package:qrpay/utils/config.dart';

class FrameScreen extends StatelessWidget {
  const FrameScreen({super.key});

  static const String routeName = '/frame';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const FrameScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    Config(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Frame'),
      // ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            height: Config.screenHeight! * 0.3,
            // color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Transfer',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Config.spaceBig,
                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/frame/to_qrpay.png'),
                    )),
                    SizedBox(width: Config.screenWidth! * 0.05,),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/frame/to_others.png'),
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
