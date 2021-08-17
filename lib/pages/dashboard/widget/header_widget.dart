import 'package:AppHRManagementResponsive/common/app_colors.dart';
import 'package:AppHRManagementResponsive/common/app_responsive.dart';
import 'package:AppHRManagementResponsive/controllers/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeaderWidget extends StatefulWidget {
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          if (!AppResponsive.isDesktop(context))
            IconButton(
                onPressed: Provider.of<MenuController>(context, listen: false)
                    .controlMenu,
                icon: Icon(Icons.menu, color: AppColor.black)),
          Text(
            "Dashboard",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          if (!AppResponsive.isMobile(context)) ...{
            Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                navigationIcon(icon: Icons.search),
                navigationIcon(icon: Icons.send),
                navigationIcon(icon: Icons.notifications_none_rounded)
              ],
            ),
          },
        ],
      ),
    );
  }

  Widget navigationIcon({icon}) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(icon, color: AppColor.black));
  }
}
