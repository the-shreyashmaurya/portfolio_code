import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/data/user_data.dart';
import 'package:portfolio/presentation/widgets/contact_info_tile_widget_desktop.dart';
import 'package:portfolio/presentation/widgets/image_and_name_widget_desktop.dart';

class SidebarDesktopSection extends StatefulWidget {
  const SidebarDesktopSection({super.key});

  @override
  State<SidebarDesktopSection> createState() => _SidebarDesktopSectionState();
}

class _SidebarDesktopSectionState extends State<SidebarDesktopSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 60),
      decoration: BoxDecoration(
        color: AppColors().grey,
        border: Border.all(color: AppColors().lightyellow, width: 1.5),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          // Image and Name
          ImageAndNameWidgetDesktop(),

          // Horizontal Line
          SizedBox(height: 15),
          Container(
            width: double.infinity,
            height: 1,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors().white, width: 0.1),
            ),
          ),
          SizedBox(height: 30),

          // Contact Info
          ListView(
            shrinkWrap: true,
            children: [
              // Email
              ContactInfoTileWidgetDesktop(
                icon: Icon(
                  Icons.email_outlined,
                  color: AppColors().yellow,
                  size: 20,
                ),
                title: "Email",
                data: UserData().email,
              ),
              SizedBox(height: 20),

              // Phone
              ContactInfoTileWidgetDesktop(
                icon: Icon(
                  Icons.phone_android_outlined,
                  color: AppColors().yellow,
                  size: 20,
                ),
                title: "Phone",
                data: UserData().phone,
              ),
              SizedBox(height: 20),

              // Location
              ContactInfoTileWidgetDesktop(
                icon: Icon(
                  Icons.pin_drop_outlined,
                  color: AppColors().yellow,
                  size: 20,
                ),
                title: "Location",
                data: UserData().location,
              ),
              SizedBox(height: 20),
            ],
          ),

          // Horizontal Line
          SizedBox(height: 15),
          Container(
            width: double.infinity,
            height: 1,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors().white, width: 0.1),
            ),
          ),
          SizedBox(height: 30),

          // Social Media
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Github
              Icon(
                FontAwesomeIcons.github,
                size: 20,
                color: AppColors().lightWhite,
              ),

              // LinkedIN
              Icon(
                FontAwesomeIcons.linkedin,
                size: 20,
                color: AppColors().lightWhite,
              ),

              // Instagram
              Icon(
                FontAwesomeIcons.instagram,
                size: 20,
                color: AppColors().lightWhite,
              ),

              // Facebook
              Icon(
                FontAwesomeIcons.facebook,
                size: 20,
                color: AppColors().lightWhite,
              ),
              // SizedBox(width: 5,),

              // Twitter
              Icon(
                FontAwesomeIcons.twitter,
                size: 20,
                color: AppColors().lightWhite,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
