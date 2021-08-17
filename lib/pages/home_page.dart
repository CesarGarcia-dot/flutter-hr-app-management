import 'package:AppHRManagementResponsive/common/app_colors.dart';
import 'package:AppHRManagementResponsive/common/app_responsive.dart';
import 'package:AppHRManagementResponsive/controllers/menu_controller.dart';
import 'package:AppHRManagementResponsive/pages/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widget/side_bar_menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      key: Provider.of<MenuController>(context, listen: false).scaffoldKey,
      backgroundColor: AppColor.bgSideMenu,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //side navigation menu

            if (AppResponsive.isDesktop(context)) Expanded(child: SideBar()),

            ///
            Expanded(flex: 4, child: Dashboard())
          ],
        ),
      ),
    );
  }
}
