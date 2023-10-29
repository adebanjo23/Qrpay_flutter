import 'package:flutter/material.dart';
import 'package:qrpay/utils/config.dart';
import 'package:qrpay/colors.dart' as color;

class AddMoneyScreen extends StatelessWidget {
  const AddMoneyScreen({super.key});

  static const String routeName = '/add_money';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const AddMoneyScreen(),
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
          'Top-up With Card',
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
            Config.spaceMedium,
            // Card Number Field
            TextFormField(
              decoration: _roundedBoxDecoration(
                'Enter an Amount',
                '10.00 - 2,000,000.00',
              ),
            ),
            Config.spaceMedium, // Add spacing between fields
            const Text('Choose a Card to debit from',
                style: TextStyle(
                  fontSize: 20, // Set the font size
                  fontWeight: FontWeight.bold,
                )),

            // Card List
            SizedBox(
              height: 100, // Customize the height of the card list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:
                    cardList.length + 1, // Plus 1 for the "Add Card" card
                itemBuilder: (context, index) {
                  if (index == cardList.length) {
                    // Display the "Add Card" card
                    return GestureDetector(
                      onTap: () {
                        // Handle button tap action here
                      },
                      child: const Card(
                        // Customize the "Add Card" card's appearance
                        child: Center(
                          child:
                              Icon(Icons.add, size: 48.0, color: Colors.green),
                        ),
                      ),
                    );
                  } else {
                    // Display a regular card from the cardList
                    return const Card(
                        child: Icon(
                      Icons.account_circle_rounded,
                      size: 48.0,
                      color: Colors.lightBlue,
                    ) // Your card content here
                        );
                  }
                },
              ),
            ),

            // Expiry Date and CVV Fields

            Config.spaceBig,

            GestureDetector(
              onTap: () {
                // Handle button tap action here
              },
              child: Image.asset('assets/add_money/add_money_button.png'),
            ),
          ],
        ),
      ),
    );
  }
}

class CardData {
  final String cardNumber;
  final String cardHolder;
  final String expiryDate;
  final String cvv;

  CardData({
    required this.cardNumber,
    required this.cardHolder,
    required this.expiryDate,
    required this.cvv,
  });
}

List<CardData> cardList = [
  CardData(
    cardNumber: '1234 5678 9012 3456',
    cardHolder: 'John Doe',
    expiryDate: '12/24',
    cvv: '123',
  ),
  CardData(
    cardNumber: '9876 5432 1098 7654',
    cardHolder: 'Jane Smith',
    expiryDate: '05/23',
    cvv: '456',
  ),

  // Add more card data objects as needed
];
