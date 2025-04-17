import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/constants/app_fonts.dart';
import 'package:portfolio/constants/app_images.dart';
import 'package:portfolio/data/user_data.dart';

class ImageAndNameWidgetDesktop extends StatefulWidget {
  const ImageAndNameWidgetDesktop({super.key});

  @override
  State<ImageAndNameWidgetDesktop> createState() =>
      _ImageAndNameWidgetDesktopState();
}

class _ImageAndNameWidgetDesktopState extends State<ImageAndNameWidgetDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image
        Center(
          child: Container(
            width: 120,
            height: 120, 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
              image: DecorationImage(
                image: AssetImage(AppImages().profile),
                fit:
                    BoxFit.cover, // Ensures the image covers the space nicely
              ),
            ),
          ),
        ),
        SizedBox(height: 15),

        // Name
        Text(UserData().name, style: AppFonts().poppinWhiteBold22),
        SizedBox(height: 15),

        // Specialization'
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors().lightGrey,
          ),
          child: Text(
            UserData().specialization[0],
            style: AppFonts().poppinWhiteNormal12,
          ),
        ),
      ],
    );
  }
}
