import 'package:boxtout/app/app.locator.dart';
import 'package:boxtout/app/app.router.dart';
import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_services/stacked_services.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  final navService = locator<RouterService>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 270,
      child: Column(
        children: [
          Padding(
            padding: vhpaceRegular,
            child: Row(
              children: [
                Image.asset(
                  'assets/splash.png',
                  width: 50,
                ),
                hSpaceRegular,
                Text(
                  "COFEECO",
                  style: const TextStyle(fontSize: 24).copyWith(
                    fontWeight: FontWeight.w900,
                    fontFamily: GoogleFonts.nunito().fontFamily,
                  ),
                ),
              ],
            ),
          ),
          Column(children: [
            ListTile(
              splashColor: Colors.transparent,
              onTap: () {
                navService.navigateToHomeView();
              },
              leading: const Icon(Icons.home_rounded),
              title: const Text('Home'),
            ),
            ListTile(
              splashColor: Colors.transparent,
              onTap: () {
                navService.navigateToOrdersView();
              },
              leading: const Icon(Icons.menu_book_rounded),
              title: const Text('Orders'),
            ),
            ListTile(
              splashColor: Colors.transparent,
              onTap: () {
                navService.navigateToMessagesView();
              },
              leading: const Icon(Icons.chat_rounded),
              title: const Text('Messages'),
            ),
            ListTile(
              splashColor: Colors.transparent,
              onTap: () {
                navService.navigateToAccountView();
              },
              leading: const Icon(Icons.account_circle_rounded),
              title: const Text('Account'),
            )
          ]),
        ],
      ),
    );
  }
}
