// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import '../main_screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DrawerListTile(
              title: 'Dashboard',
              svgSrc: "assets/icons/menu_dashboard.svg",
              press: () {},
            ),
            DrawerListTile(
              title: 'Transaction',
              svgSrc: 'assets/icons/menu_tran.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Task',
              svgSrc: 'assets/icons/menu_task.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Documnets',
              svgSrc: 'assets/icons/menu_doc.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Store',
              svgSrc: 'assets/icons/menu_store.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Notification',
              svgSrc: 'assets/icons/menu_notification.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Profile',
              svgSrc: 'assets/icons/menu_profile.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Setting',
              svgSrc: 'assets/icons/menu_setting.svg',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
