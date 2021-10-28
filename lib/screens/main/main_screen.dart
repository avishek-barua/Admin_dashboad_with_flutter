import 'package:dashboard/controllers/MenuController.dart';
import 'package:dashboard/responsive.dart';
import 'package:dashboard/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/src/provider.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) Expanded(child: SideMenu()),
            Expanded(flex: 4, child: DashboardScreen())
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(svgSrc, color: Colors.white54, height: 16),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
