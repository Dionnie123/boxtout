import 'package:boxtout/app/app.locator.dart';
import 'package:boxtout/app/app.router.dart';
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
      width: 250,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Image.asset(
                  'assets/splash.png',
                  width: 40,
                  height: 40,
                ),
              ),
              Text(
                "COFEECO",
                style: const TextStyle(fontSize: 24).copyWith(
                  fontWeight: FontWeight.w900,
                  fontFamily: GoogleFonts.nunito().fontFamily,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(children: [
            ListTile(
              splashColor: Colors.transparent,
              onTap: () async {
                await navService.pop();
                await Future.delayed(const Duration(milliseconds: 230));
                await navService.replaceWithHomeView();
              },
              leading: const Icon(Icons.home_rounded),
              title: const Text(
                'Home',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              splashColor: Colors.transparent,
              onTap: () async {
                await navService.pop();
                await Future.delayed(const Duration(milliseconds: 230));
                await navService.replaceWithOrdersView();
              },
              leading: const Icon(Icons.menu_book_rounded),
              title: const Text(
                'Orders',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              splashColor: Colors.transparent,
              onTap: () {
                //   navService.pop();
                //  navService.navigateToMessagesView();
              },
              leading: const Icon(
                Icons.chat_rounded,
              ),
              title: const Text('Messages', style: TextStyle(fontSize: 16)),
            ),
            ListTile(
              splashColor: Colors.transparent,
              onTap: () {
                // navService.pop();
                // navService.navigateToAccountView();
              },
              leading: const Icon(
                Icons.account_circle_rounded,
              ),
              title: const Text('Account', style: TextStyle(fontSize: 16)),
            )
          ]),
        ],
      ),
    );
  }
}
