import 'package:flutter/material.dart';
import 'package:qrpay/utils/config.dart';
import 'package:qrpay/colors.dart' as color;

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const String routeName = '/profile';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const ProfileScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Colors.black45),),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 62,
        centerTitle: true,
        automaticallyImplyLeading: false,

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
        actions: [
          IconButton(
            icon: const Icon(Icons.person), // User icon
            onPressed: () {
              // Handle user icon click (e.g., open user profile)
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          buildProfileSettingItem('Profile Settings', Icons.settings),
          buildProfileSettingItem('Bankcard/Account', Icons.credit_card),
          buildProfileSettingItem('Refer Friends', Icons.people),
          buildProfileSettingItem('Report Problem', Icons.report),
          buildProfileSettingItem('Security', Icons.security),
          buildProfileSettingItem('Help and Support', Icons.help),
          buildProfileSettingItem('Rate Us', Icons.star),
          buildProfileSettingItem('Logout', Icons.exit_to_app),
        ],
      ),
    );
  }


  Widget buildProfileSettingItem(String title, IconData iconData) {
    return ListTile(
      leading: Icon(iconData), // Icon on the left
      title: Text(title),
      onTap: () {
        // Handle the action when an item is tapped
        // You can use Navigator to navigate to specific pages for each item.
      },
    );
  }
}

