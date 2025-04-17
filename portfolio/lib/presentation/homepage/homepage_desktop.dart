import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/presentation/sections/home/main_desktop_section.dart';
import 'package:portfolio/presentation/sections/home/sidebar_desktop_section.dart';

class HomepageDesktop extends StatefulWidget {
  const HomepageDesktop({super.key});

  @override
  State<HomepageDesktop> createState() => _HomepageWebState();
}

class _HomepageWebState extends State<HomepageDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().black,
      body: Container(
        padding: EdgeInsets.only(left: 120, right: 120, top: 60),
        child: Row(
          children: [
            // Left Section
            Expanded(flex: 2, child: SidebarDesktopSection()),

            // Main Section
            Expanded(flex: 7, child: MainDesktopSection()),
          ],
        ),
      ),
    );
  }
}
